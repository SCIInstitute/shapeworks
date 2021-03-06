#include <Project.h>

#include <memory>
#include <xlnt/xlnt.hpp>
#include <Libs/Mesh/Mesh.h>
#include <Libs/Mesh/MeshUtils.h>
#include <vtkPolyData.h>
#include <vtkPointData.h>

#include <cstring>

using namespace shapeworks;

//---------------------------------------------------------------------------
static std::string replace_string(std::string subject, const std::string& search,
                                  const std::string& replace)
{
  size_t pos = 0;
  while ((pos = subject.find(search, pos)) != std::string::npos) {
    subject.replace(pos, search.length(), replace);
    pos += replace.length();
  }
  return subject;
}

//---------------------------------------------------------------------------
Project::Project()
{
  this->wb_ = std::make_unique<xlnt::workbook>();
}

//---------------------------------------------------------------------------
Project::~Project() = default;

//---------------------------------------------------------------------------
bool Project::load(const std::string& filename)
{
  try {
    this->wb_->load(filename);
  } catch (xlnt::exception& e) {

    std::cerr << std::string("Error reading xlsx: ")
              << std::string(e.what()) << ", " << "\n";

    return false;
  }

  this->load_subjects();

  Parameters project_parameters = this->get_parameters(Parameters::PROJECT_PARAMS);

  this->version_ = project_parameters.get("version", -1);

  this->loaded_ = true;
  return true;
}

//---------------------------------------------------------------------------
bool Project::save(const std::string& filename)
{

  try {
    xlnt::worksheet ws = this->wb_->sheet_by_index(0);
    ws.title("data");

    Parameters project_parameters;
    project_parameters.set("version", this->supported_version_);
    this->set_parameters(Parameters::PROJECT_PARAMS, project_parameters);

    this->store_subjects();
    this->wb_->save(filename);
  } catch (xlnt::exception& e) {

    std::cerr << std::string("Error writing xlsx: ")
              << std::string(e.what()) << ", " << "\n";

    throw "Error writing xlsx";
  }

  return true;
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_headers()
{
  return this->get_matching_columns("");
}

//---------------------------------------------------------------------------
int Project::get_number_of_subjects()
{
  auto seg_columns = this->get_matching_columns(SEGMENTATION_PREFIX);
  auto dt_columns = this->get_matching_columns(GROOMED_PREFIX);
  auto local_particle_files = this->get_matching_columns(LOCAL_PARTICLES);
  if (!seg_columns.empty()) {
    return this->get_string_column(seg_columns[0]).size();
  }
  if (!dt_columns.empty()) {
    return this->get_string_column(dt_columns[0]).size();
  }
  if (!local_particle_files.empty()) {
    return this->get_string_column(local_particle_files[0]).size();
  }
  return 0;
}

//---------------------------------------------------------------------------
int Project::get_number_of_domains_per_subject()
{
  auto seg_columns = this->get_matching_columns(SEGMENTATION_PREFIX);
  if (!seg_columns.empty()) {
    return seg_columns.size();
  }

  auto groom_columns = this->get_matching_columns(GROOMED_PREFIX);
  if (!groom_columns.empty()) {
    return groom_columns.size();
  }

  /// TODO: when only point files are specified,
  /// the user has to specify somewhere how many domains there are (if more than one)

  // default 1
  return 1;
}

//---------------------------------------------------------------------------
std::vector<std::shared_ptr<Subject>>& Project::get_subjects()
{
  return this->subjects_;
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_matching_columns(const std::string& prefix)
{
  this->matching_columns_.insert(prefix);
  xlnt::worksheet ws = this->wb_->sheet_by_index(0);
  auto headers = ws.rows(false)[0];
  std::vector<std::string> list;

  for (int i = 0; i < headers.length(); i++) {
    if (headers[i].to_string().substr(0, prefix.size()) == prefix) {
      list.push_back(headers[i].to_string());
    }
  }
  return list;
}

//---------------------------------------------------------------------------
std::string Project::get_value(int column, int subject_id)
{
  xlnt::worksheet ws = this->wb_->sheet_by_index(0);
  return ws.cell(xlnt::cell_reference(column, subject_id)).value<std::string>();
}

//---------------------------------------------------------------------------
void Project::set_value(int column, int subject_id, const std::string& value)
{
  xlnt::worksheet ws = this->wb_->sheet_by_index(0);

  //std::cerr << "setting value for column = " << column << ", subject = " << subject_id << " to " <<
  //value << "\n";

  ws.cell(xlnt::cell_reference(column, subject_id)).value(value);
}

//---------------------------------------------------------------------------
void Project::set_value(const std::string& column_name, int subject_id, const std::string& value)
{
  int column_index = get_index_for_column(column_name, true);
  this->set_value(column_index, subject_id + 2, value); // +1 for header, +1 for 1-indexed
}

//---------------------------------------------------------------------------
std::string Project::get_subject_value(int column, int subject_id)
{
  return this->get_value(column, subject_id + 2); // 1-based and skip header
}

//---------------------------------------------------------------------------
void Project::load_subjects()
{
  int num_subjects = this->get_number_of_subjects();

  this->subjects_.clear();

  this->num_domains_per_subject_ = this->get_number_of_domains_per_subject();

  auto seg_columns = this->get_matching_columns(SEGMENTATION_PREFIX);
  auto groomed_columns = this->get_matching_columns(GROOMED_PREFIX);
  auto groomed_transform_columns = this->get_matching_columns(GROOMED_TRANSFORMS_PREFIX);
  auto feature_columns = this->get_feature_names();
  auto group_names = this->get_matching_columns(GROUP_PREFIX);
  int local_particle_column = this->get_index_for_column(LOCAL_PARTICLES);
  int global_particle_column = this->get_index_for_column(WORLD_PARTICLES);

  auto extra_columns = this->get_extra_columns();

  for (int i = 0; i < num_subjects; i++) {
    std::shared_ptr<Subject> subject = std::make_shared<Subject>();

    subject->set_number_of_domains(this->num_domains_per_subject_);
    subject->set_segmentation_filenames(this->get_list(seg_columns, i));
    subject->set_groomed_filenames(this->get_list(groomed_columns, i));
    subject->set_groomed_transforms(this->get_transform_list(groomed_transform_columns, i));

    auto feature_list = this->get_list(feature_columns, i);
    std::map<std::string, std::string> map;
    for (int j = 0; j < feature_columns.size(); j++) {
      std::string feature = feature_columns[j].substr(std::strlen(FEATURE_PREFIX));
      map[feature] = feature_list[j];
    }
    subject->set_feature_filenames(map);

    auto group_values = this->get_list(group_names, i);
    std::map<std::string, std::string> group_map;
    for (int j = 0; j < group_names.size(); j++) {
      std::string name = group_names[j].substr(std::strlen(GROUP_PREFIX));
      group_map[name] = group_values[j];
    }
    subject->set_group_values(group_map);

    if (local_particle_column > 0) {
      this->particles_present_ = true;
      subject->set_local_particle_filename(this->get_subject_value(local_particle_column, i));
    }

    if (global_particle_column > 0) {
      this->particles_present_ = true;
      subject->set_global_particle_filename(this->get_subject_value(global_particle_column, i));
    }

    std::map<std::string, std::string> extra_values;
    for (auto elem : this->get_extra_columns()) {
      auto value = this->get_value(this->get_index_for_column(elem),
                                   i + 2); //+1 for header, +1 for 1-based index
      extra_values[elem] = value;
    }
    subject->set_extra_values(extra_values);

    this->segmentations_present_ = !seg_columns.empty();
    this->groomed_present_ = !groomed_columns.empty();
    this->subjects_.push_back(subject);
  }
}

//---------------------------------------------------------------------------
void Project::store_subjects()
{
  int num_subjects = this->subjects_.size();

  // segmentation columns
  auto seg_columns = this->get_matching_columns(SEGMENTATION_PREFIX);

  // groomed columns
  std::vector<std::string> groomed_columns;
  for (int i = 0; i < seg_columns.size(); i++) {
    std::string groom_column_name = replace_string(seg_columns[i],
                                                   SEGMENTATION_PREFIX, GROOMED_PREFIX);
    groomed_columns.push_back(groom_column_name);
  }

  // groomed transform columns (e.g. centering, etc)
  std::vector<std::string> groomed_transform_columns;
  for (int i = 0; i < groomed_columns.size(); i++) {
    std::string groomed_transform_column_name = replace_string(groomed_columns[i],
                                                               GROOMED_PREFIX,
                                                               GROOMED_TRANSFORMS_PREFIX);
    groomed_transform_columns.push_back(groomed_transform_column_name);
  }

  bool groomed_present = false;

  // clear
  xlnt::worksheet ws = this->wb_->sheet_by_index(0);
  ws.delete_rows(ws.highest_row(), ws.highest_row() - 1);

  for (int i = 0; i < num_subjects; i++) {
    std::shared_ptr<Subject> subject = this->subjects_[i];

    // segmentations
    auto seg_files = subject->get_segmentation_filenames();
    if (seg_files.size() > seg_columns.size()) {
      seg_columns.push_back(std::string(SEGMENTATION_PREFIX) + "file");
    }
    this->set_list(seg_columns, i, seg_files);

    auto groups = subject->get_group_values();
    this->set_map(i, GROUP_PREFIX, groups);

    // groomed files
    auto groomed_files = subject->get_groomed_filenames();
    if (groomed_files.size() >= groomed_columns.size() && groomed_files.size() > 0) {
      groomed_present = true;
      while (groomed_files.size() > groomed_columns.size()) {
        groomed_columns.push_back(std::string(GROOMED_PREFIX) + "file");
      }
      this->set_list(groomed_columns, i, groomed_files);

      this->set_transform_list(groomed_transform_columns, i, subject->get_groomed_transforms());
    }

    // features
    auto features = subject->get_feature_filenames();
    for (auto const& x : features) {
      int idx = this->get_index_for_column("feature_" + x.first, true);
      this->set_value(idx, i + 2, x.second); // +1 for header, +1 for 1-based index
    }

    // extra values
    auto extra_values = subject->get_extra_values();
    for (auto const& x : extra_values) {
      int idx = this->get_index_for_column(x.first, true);
      this->set_value(idx, i + 2, x.second);  // +1 for header, +1 for 1-based index
    }

    // local files
    std::string local_filename = subject->get_local_particle_filename();
    if (!local_filename.empty()) {
      this->set_value("local_particles", i, local_filename);
      this->particles_present_ = true;
    }
    std::string global_filename = subject->get_global_particle_filename();
    if (!global_filename.empty()) {
      this->set_value("world_particles", i, global_filename);
      this->particles_present_ = true;
    }
  }

  this->segmentations_present_ = !seg_columns.empty();
  this->groomed_present_ = groomed_present;
}

//---------------------------------------------------------------------------
int Project::get_supported_version() const
{
  return this->supported_version_;
}

//---------------------------------------------------------------------------
int Project::get_version() const
{
  return this->version_;
}

//---------------------------------------------------------------------------
int Project::get_index_for_column(const std::string& name, bool create_if_not_found) const
{

  xlnt::worksheet ws = this->wb_->sheet_by_index(0);

  auto headers = ws.rows(false)[0];

  //std::cerr << "number of headers = " << headers.length() << "\n";
  for (int i = 0; i < headers.length(); i++) {
    //std::cerr << headers[i].to_string() << "\n";
    if (headers[i].to_string() == name) {
      return i + 1;
    }
  }

  if (create_if_not_found) {
//    std::cerr << "couldn't find: " << name << "\n";
    auto column = ws.highest_column();
    //  std::cerr << "highest column is " << column.index << "\n";
    if (ws.cell(xlnt::cell_reference(column.index, 1)).value<std::string>().empty()) {
      ws.cell(xlnt::cell_reference(column.index, 1)).value(name);
      return column.index;
    }
    else {
      ws.cell(xlnt::cell_reference(column.index + 1, 1)).value(name);
      return column.index + 1;
    }
  }

  return -1;
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_string_column(const std::string& name) const
{
  int index = this->get_index_for_column(name);

  //std::cerr << "index for '" << name << "' = " << index << "\n";
  std::vector<std::string> list;
  if (index < 0) {
    return list;
  }

  xlnt::worksheet ws = this->wb_->sheet_by_index(0);

  auto rows = ws.rows(false);

  //std::cerr << "rows.length = " << rows.length() << "\n";

  for (int i = 1; i < rows.length(); i++) {
    std::string value = rows[i][index - 1].to_string();
    //std::cerr << "value = " << value << "\n";
    //if (value != "") {
    list.push_back(value);
    //}
  }

  return list;
}

//---------------------------------------------------------------------------
bool Project::get_segmentations_present() const
{
  return this->segmentations_present_;
}

//---------------------------------------------------------------------------
bool Project::get_groomed_present() const
{
  return this->groomed_present_;
}

//---------------------------------------------------------------------------
bool Project::get_particles_present() const
{
  return this->particles_present_;
}

//---------------------------------------------------------------------------
Parameters Project::get_parameters(const std::string& name)
{
  Parameters params;
  std::map<std::string, std::string> map;

  if (!this->wb_->contains(name)) {
    return params;
  }
  xlnt::worksheet ws = this->wb_->sheet_by_title(name);

  if (ws.highest_column().index < 2) {
    return params;
  }

  auto rows = ws.rows(false);

  for (int i = 1; i < rows.length(); i++) {
    std::string key = rows[i][0].to_string();
    std::string value = rows[i][1].to_string();
    map[key] = value;
  }
  params.set_map(map);
  return params;
}

//---------------------------------------------------------------------------
void Project::set_parameters(const std::string& name, Parameters params)
{
  try {
    // remove the old sheet
    // we do this because otherwise keys that were removed, we would have to search
    // for and remove these keys
    if (this->wb_->contains(name)) {
      auto ws = this->wb_->sheet_by_title(name);
      this->wb_->remove_sheet(ws);
    }

    auto ws = this->wb_->create_sheet();
    ws.title(name);

    ws.cell(xlnt::cell_reference(1, 1)).value("key");
    ws.cell(xlnt::cell_reference(2, 1)).value("value");
    int row = 2; // skip header
    for (const auto& kv : params.get_map()) {
      ws.cell(xlnt::cell_reference(1, row)).value(kv.first);
      ws.cell(xlnt::cell_reference(2, row)).value(kv.second);
      row++;
    }
  } catch (xlnt::exception& e) {

    std::cerr << std::string("Error storing parameters: ")
              << std::string(e.what()) << ", " << "\n";
  }
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_list(std::vector<std::string> columns, int subject)
{
  std::vector<std::string> list;
  for (int s = 0; s < columns.size(); s++) {
    auto column = columns[s];
    int column_index = this->get_index_for_column(column);
    auto value = this->get_value(column_index, subject + 2); // +1 for header, +1 for 1-indexed
    list.push_back(value);
  }
  return list;
}

//---------------------------------------------------------------------------
void Project::set_list(std::vector<std::string> columns, int subject,
                       std::vector<std::string> values)
{
  assert(columns.size() == values.size());
  for (int s = 0; s < columns.size(); s++) {
    auto column = columns[s];
    int column_index = get_index_for_column(column, true);
    //std::cerr << "get_index_for_column(" << column << ") returned " << column_index << "\n";
    this->set_value(column_index, subject + 2, values[s]); // +1 for header, +1 for 1-indexed
  }
}

//---------------------------------------------------------------------------
void Project::set_map(int subject, const std::string& prefix,
                      const std::map<std::string, std::string>& map)
{
  for (const auto& pair : map) {
    int column_index = get_index_for_column(prefix + pair.first, true);
    this->set_value(column_index, subject + 2, pair.second); // +1 for header, +1 for 1-indexed
  }
}

//---------------------------------------------------------------------------
void Project::save_string_column(const std::string& name, std::vector<std::string> items)
{
  int index = this->get_index_for_column(name, true);

  xlnt::worksheet ws = this->wb_->sheet_by_index(0);

  ws.cell(xlnt::cell_reference(index + 1, 1)).value(name);

  for (int i = 0; i < items.size(); i++) {
    ws.cell(xlnt::cell_reference(index + 1, i + 2)).value(items[i]);
  }
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_feature_names()
{
  auto feature_names = this->get_matching_columns(FEATURE_PREFIX);
  if (!this->subjects_.empty() && this->mesh_scalars_.empty()) {
    auto subject = this->subjects_[0];
    if (subject->get_domain_types().size() > 0 &&
        subject->get_domain_types()[0] == DomainType::Mesh) {
      if (!subject->get_segmentation_filenames().empty()) {
        auto poly_data = MeshUtils::threadSafeReadMesh(
          subject->get_segmentation_filenames()[0]).getVTKMesh();
        if (poly_data) {
          vtkIdType numberOfPointArrays = poly_data->GetPointData()->GetNumberOfArrays();
          for (vtkIdType i = 0; i < numberOfPointArrays; i++) {
            this->mesh_scalars_.push_back(std::string("FEATURE_")
                                          + poly_data->GetPointData()->GetArrayName(i));
          }
        }
      }
    }
  }
  feature_names.insert(feature_names.end(), this->mesh_scalars_.begin(), this->mesh_scalars_.end());
  return feature_names;
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_group_names()
{
  auto raw_names = this->get_matching_columns(GROUP_PREFIX);

  std::vector<std::string> group_names;

  for (std::string group : raw_names) {
    group.erase(0, std::strlen(GROUP_PREFIX)); // erase "group_"
    group_names.push_back(group);
  }

  return group_names;
}

//---------------------------------------------------------------------------
std::vector<std::vector<double>>
Project::get_transform_list(std::vector<std::string> columns, int subject)
{
  auto list = this->get_list(columns, subject);

  std::vector<std::vector<double>> transforms;
  for (int i = 0; i < list.size(); i++) {
    std::string str = list[i];

    std::istringstream ss(str);

    std::vector<double> values;

    for (double value; ss >> value;) {
      values.push_back(value);
    }

    transforms.push_back(values);
  }
  return transforms;
}

//---------------------------------------------------------------------------
void Project::set_transform_list(const std::vector<std::string>& columns, int subject,
                                 std::vector<std::vector<double>> transforms)
{
  std::vector<std::string> transform_strings;
  for (int i = 0; i < transforms.size(); i++) {
    std::string str;
    for (int j = 0; j < transforms[i].size(); j++) {
      str = str + " " + std::to_string(transforms[i][j]);
    }
    transform_strings.push_back(str);
  }

  while (transform_strings.size() < columns.size()) {
    transform_strings.push_back("");
  }

  this->set_list(columns, subject, transform_strings);

}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_group_values(const std::string& group_name) const
{
  auto values = this->get_string_column(group_name);

  // remove duplicates
  std::sort(values.begin(), values.end());
  values.erase(std::unique(values.begin(), values.end()), values.end());

  return values;
}

//---------------------------------------------------------------------------
std::vector<std::string> Project::get_extra_columns() const
{
  xlnt::worksheet ws = this->wb_->sheet_by_index(0);
  auto headers = ws.rows(false)[0];
  std::vector<std::string> list;

  for (int i = 0; i < headers.length(); i++) {
    bool match = false;
    for (auto prefix : this->matching_columns_) {
      if (headers[i].to_string().substr(0, prefix.size()) == prefix) {
        match = true;
      }
    }
    if (!match) {
      list.push_back(headers[i].to_string());
    }
  }
  return list;
}


//---------------------------------------------------------------------------
