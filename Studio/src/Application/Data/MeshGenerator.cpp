#include <limits>

#include <QFileInfo>

#include <itkPoint.h>

#include <vtkPolyDataNormals.h>
#include <vtkMarchingCubes.h>

#include <Data/MeshGenerator.h>
#include <Data/ItkToVtk.h>
#include <Data/StudioLog.h>

#include <itkVTKImageExport.h>
#include <itkOrientImageFilter.h>

#include <Libs/Mesh/Mesh.h>
#include <Libs/Mesh/MeshUtils.h>

#include <Libs/Utils/StringUtils.h>

#include <Data/LegacyMeshGenerator.h>

namespace shapeworks {

const std::string MeshGenerator::RECONSTRUCTION_LEGACY_C("legacy");
const std::string MeshGenerator::RECONSTRUCTION_DISTANCE_TRANSFORM_C("distance_transform");
const std::string MeshGenerator::RECONSTRUCTION_MESH_WARPER_C("mesh_warper");

//---------------------------------------------------------------------------
MeshGenerator::MeshGenerator()
{}

//---------------------------------------------------------------------------
MeshGenerator::~MeshGenerator()
{}

//---------------------------------------------------------------------------
MeshHandle MeshGenerator::build_mesh(const MeshWorkItem& item)
{
  if (item.filename != "") {
    return this->build_mesh_from_file(item.filename);
  }
  else {
    return this->build_mesh_from_points(item.points, item.domain);
  }
}

//---------------------------------------------------------------------------
MeshHandle MeshGenerator::build_mesh_from_points(const vnl_vector<double>& shape,
                                                 int domain)
{
  MeshHandle mesh(new StudioMesh);

  bool distance_transform_available = this->surface_reconstructor_ &&
                                      this->surface_reconstructor_->get_surface_reconstruction_available();

  if (this->reconstruction_method_ == RECONSTRUCTION_DISTANCE_TRANSFORM_C &&
      distance_transform_available) {
    vtkSmartPointer<vtkPolyData> poly_data = this->surface_reconstructor_->build_mesh(shape);

    vtkSmartPointer<vtkPolyDataNormals> polydata_normals =
      vtkSmartPointer<vtkPolyDataNormals>::New();
    polydata_normals->SetInputData(poly_data);
    polydata_normals->Update();
    poly_data = polydata_normals->GetOutput();

    mesh->set_poly_data(poly_data);
  }
  else if (this->reconstruction_method_ == RECONSTRUCTION_MESH_WARPER_C && this->mesh_warper_ &&
           this->mesh_warper_->get_warp_available()) {
    vtkSmartPointer<vtkPolyData> poly_data = this->mesh_warper_->build_mesh(shape);

    vtkSmartPointer<vtkPolyDataNormals> polydata_normals =
      vtkSmartPointer<vtkPolyDataNormals>::New();
    polydata_normals->SetInputData(poly_data);
    polydata_normals->Update();
    poly_data = polydata_normals->GetOutput();

    mesh->set_poly_data(poly_data);
  }
  else {
    LegacyMeshGenerator legacy;
    mesh->set_poly_data(legacy.buildMesh(shape));
  }
  return mesh;
}

//---------------------------------------------------------------------------
MeshHandle MeshGenerator::build_mesh_from_image(ImageType::Pointer image, float iso_value)
{
  MeshHandle mesh(new StudioMesh);

  try {
    // connect to VTK
    vtkSmartPointer<vtkImageImport> vtk_image = vtkSmartPointer<vtkImageImport>::New();
    itk::VTKImageExport<ImageType>::Pointer itk_exporter = itk::VTKImageExport<ImageType>::New();
    itk_exporter->SetInput(image);
    ConnectPipelines(itk_exporter, vtk_image.GetPointer());
    vtk_image->Update();

    // create isosurface
    auto marching = vtkSmartPointer<vtkMarchingCubes>::New();
    marching->SetInputConnection(vtk_image->GetOutputPort());
    marching->SetNumberOfContours(1);
    marching->SetValue(0, iso_value);
    marching->Update();

    mesh->set_poly_data(marching->GetOutput());
  } catch (itk::ExceptionObject& excep) {
    std::cerr << "Exception caught!" << std::endl;
    std::cerr << excep << std::endl;
    mesh->set_error_message(std::string("Exception: ") + excep.what());
  }
  return mesh;
}

//---------------------------------------------------------------------------
MeshHandle MeshGenerator::build_mesh_from_file(std::string filename, float iso_value)
{
  //std::cerr << "build_mesh from " << filename << "\n";
  MeshHandle mesh(new StudioMesh);

  if (!QFileInfo(QString::fromStdString(filename)).exists()) {
    mesh->set_error_message("File does not exist: " + filename);
    return mesh;
  }

  bool is_mesh = false;
  for (auto type : shapeworks::Mesh::getSupportedTypes()) {
    if (StringUtils::hasSuffix(filename, type)) {
      is_mesh = true;
    }
  }

  if (is_mesh) {
    try {
      mesh->set_poly_data(MeshUtils::threadSafeReadMesh(filename).getVTKMesh());
    } catch (std::exception e) {
      std::string message = std::string("Error reading: ") + filename;
      STUDIO_LOG_ERROR(QString::fromStdString(message));
      mesh->set_error_message(message);
    }
  }
  else {
    try {
      // read file using ITK
      using ReaderType = itk::ImageFileReader<ImageType>;
      ReaderType::Pointer reader = ReaderType::New();
      reader->SetFileName(filename);
      reader->Update();
      ImageType::Pointer image = reader->GetOutput();

      // set orientation to RAI
      using Orienter = itk::OrientImageFilter<ImageType, ImageType>;
      Orienter::Pointer orienter = Orienter::New();
      orienter->UseImageDirectionOn();
      orienter->SetDesiredCoordinateOrientation(
        itk::SpatialOrientation::ITK_COORDINATE_ORIENTATION_RAI);
      orienter->SetInput(image);
      orienter->Update();
      image = orienter->GetOutput();

      mesh = this->build_mesh_from_image(image, iso_value);
    } catch (itk::ExceptionObject& excep) {
      std::cerr << "Exception caught!" << std::endl;
      std::cerr << excep << std::endl;
      mesh->set_error_message(std::string("Exception: ") + excep.what());
    }
  }
  return mesh;

}

//---------------------------------------------------------------------------
void MeshGenerator::set_surface_reconstructor(QSharedPointer<SurfaceReconstructor> reconstructor)
{
  this->surface_reconstructor_ = reconstructor;
}

//---------------------------------------------------------------------------
void MeshGenerator::set_mesh_warper(QSharedPointer<MeshWarper> mesh_warper)
{
  this->mesh_warper_ = mesh_warper;
}

//---------------------------------------------------------------------------
void MeshGenerator::set_reconstruction_method(std::string method)
{
  this->reconstruction_method_ = method;
}

//---------------------------------------------------------------------------
std::string MeshGenerator::get_reconstruction_method()
{
  return this->reconstruction_method_;
}

}
