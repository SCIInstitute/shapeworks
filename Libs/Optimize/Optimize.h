/*=========================================================================
   Program:   ShapeWorks: Particle-based Shape Correspondence & Visualization
   File:      ShapeWorksRunApp.h

   Copyright (c) 2020 Scientific Computing and Imaging Institute.
   See ShapeWorksLicense.txt for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notices for more information.
   =========================================================================*/
#pragma once

#ifdef _WIN32
#pragma warning( disable: 4996 )
#endif

// std
#include <vector>
#include <string>

// itk
#include <itkImage.h>
#include <itkMaximumEntropyCorrespondenceSampler.h>
#include <itkCommand.h>
#include <itkParticleProcrustesRegistration.h>
#include <itkParticleGoodBadAssessment.h>
#include <itkParticleVectorFunction.h>

// optimize library
#include <itkParticleSystem.h>

/**
 * \class Optimize
 * \ingroup Group-Optimize
 *
 * This class is the top-level API for the optimization library
 *
 * \par Overview of Optimize
 *
 * The Optimize class controls all aspect of the particle system library
 * provides a top-level public API for running optimization
 *
 */
class Optimize
{
public:
  using ImageType = itk::Image<float, 3>;
  using SamplerType = itk::MaximumEntropyCorrespondenceSampler<itk::Image<float, 3>>;
  using VectorType = itk::ParticleVectorFunction<3>::VectorType;

  //! Constructor
  Optimize();

  //! Destructor
  virtual ~Optimize();

  //! Return the Sampler
  SamplerType* GetSampler() { return m_sampler.GetPointer(); }

  //! Run the optimization
  bool Run();

  //! Run an iteration of procrustes
  void RunProcrustes();

  //! Set the iteration callback.  Derived classes should override to set their own callback
  virtual void SetIterationCallback();

  //! Set the verbosity level (0-5)
  void SetVerbosity(int verbosity_level);

  //! Set the number of domains per shape
  void SetDomainsPerShape(int domains_per_shape);
  //! Return the number of domains per shape
  int GetDomainsPerShape();

  //! Set the numbers of particles (vector of numbers, one for each domain)
  void SetNumberOfParticles(std::vector<unsigned int> number_of_particles);
  //! Return the numbers of particles per domain
  std::vector<unsigned int> GetNumberOfParticles();

  //! Set the transform file
  void SetTransformFile(std::string filename);
  //! Get the transform file
  std::string GetTransformFile();

  //! Set the prefix transform file (TODO: details)
  void SetPrefixTransformFile(std::string prefix_transform_file);
  //! Get the prefix transform file
  std::string GetPrefixTransformFile();

  //! Set the output directory
  void SetOutputDir(std::string output_dir);

  //! Set the output transform file
  void SetOutputTransformFile(std::string output_transform_file);

  //! Set if mesh based attributes should be used
  void SetUseMeshBasedAttributes(bool use_mesh_based_attributes);

  //! Get if mesh based attributes are being used
  bool GetUseMeshBasedAttributes();

  //! Set if XYZ is used, one value per domain
  void SetUseXYZ(std::vector<bool> use_xyz);

  //! Set if Normals are being used, one value per domain
  void SetUseNormals(std::vector<bool> use_normals);

  //! Set the attributes per domain
  void SetAttributesPerDomain(std::vector<int> attributes_per_domain);
  //! Get attributes per domain
  std::vector<int> GetAttributesPerDomain();

  //! Set the distribution domain ID (TODO: details)
  void SetDistributionDomainID(int distribution_domain_id);
  //! Get the distribution domain ID
  int GetDistributionDomainID();

  //! Set the output cutting plane file
  void SetOutputCuttingPlaneFile(std::string output_cutting_plane_file);
  //! Set if using cutting planes
  void SetUseCuttingPlanes(bool use_cutting_planes);
  //! Set a given cutting plane for a shape
  void SetCuttingPlane(unsigned int i,
                       const vnl_vector_fixed<double, 3> &va,
                       const vnl_vector_fixed<double, 3> &vb,
                       const vnl_vector_fixed<double, 3> &vc);

  // optimization parameters

  //! Set processing mode (TODO: details)
  void SetProcessingMode(int mode);
  //! Set adaptivity mode (TODO: details)
  void SetAdaptivityMode(int adaptivity_mode);
  //! Set adaptivity strength (TODO: details)
  void SetAdaptivityStrength(double adaptivity_strength);
  void SetPairwisePotentialType(int pairwise_potential_type);
  void SetOptimizerType(int optimizer_type);
  void SetTimePtsPerSubject(int time_pts_per_subject);
  int GetTimePtsPerSubject();
  void SetOptimizationIterations(int optimization_iterations);
  void SetOptimizationIterationsCompleted(int optimization_iterations_completed);
  void SetIterationsPerSplit(int iterations_per_split);
  void SetInitCriterion(double init_criterion);
  void SetOptCriterion(double opt_criterion);
  void SetUseShapeStatisticsInInit(bool use_shape_statistics_in_init);
  void SetProcrustesInterval(int procrustes_interval);
  void SetProcrustesScaling(int procrustes_scaling);
  void SetRelativeWeighting(double relative_weighting);
  void SetInitialRelativeWeighting(double initial_relative_weighting);
  void SetStartingRegularization(double starting_regularization);
  void SetEndingRegularization(double ending_regularization);
  void SetRecomputeRegularizationInterval(int recompute_regularization_interval);
  void SetSaveInitSplits(bool save_init_splits);
  void SetCheckpointingInterval(int checkpointing_interval);
  void SetKeepCheckpoints(int keep_checkpoints);
  void SetCotanSigmaFactor(double cotan_sigma_factor);

  void SetUseRegression(bool use_regression);
  void SetUseMixedEffects(bool use_mixed_effects);

  void SetNormalAngle(double normal_angle);
  void SetPerformGoodBad(bool perform_good_bad);
  void SetLogEnergy(bool log_energy);

  void SetImages(const std::vector<ImageType::Pointer> &images);
  std::vector<ImageType::Pointer> GetImages();

  void SetFilenames(const std::vector<std::string> &filenames);
  void SetPointFiles(const std::vector <std::string> &point_files);
  int GetNumShapes();
  void SetMeshFiles(const std::vector<std::string> &mesh_files);
  void SetAttributeScales(const std::vector<double> &scales);
  void SetFeaFiles(const std::vector<std::string> &files);
  void SetFeaGradFiles(const std::vector<std::string> &files);
  void SetFidsFiles(const std::vector<std::string> &files);

  void SetParticleFlags(std::vector<int> flags);
  void SetDomainFlags(std::vector<int> flags);

  //! Set if file output is enabled
  void SetFileOutputEnabled(bool enabled);

  std::vector<bool> GetUseXYZ();

  std::vector<bool> GetUseNormals();

  void ReadTransformFile();
  void ReadPrefixTransformFile(const std::string &s);

  void InitializeSampler();
  double GetMinNeighborhoodRadius();
  void AddSinglePoint();
  void Initialize();
  void AddAdaptivity();
  void RunOptimize();
  void optimize_start();
  void optimize_stop();
  void abort_optimization();

  virtual void IterateCallback(itk::Object*, const itk::EventObject &);
  void ComputeEnergyAfterIteration();
  void SetCotanSigma();

  void PrintParamInfo();

  //! Return the local points
  virtual std::vector<std::vector<itk::Point<double>>> GetLocalPoints();
  //! Return the global points
  virtual std::vector<std::vector<itk::Point<double>>> GetGlobalPoints();
  //! Set cutting planes
  void SetCutPlanes(std::vector<std::array<itk::Point<double>, 3 >> cut_planes);

  //! Return if the optimization was aborted
  bool GetAborted();

protected:

  void WriteTransformFile(int iter = -1) const;
  void WriteTransformFile(std::string iter_prefix) const;
  void WritePointFiles(int iter = -1);
  void WritePointFiles(std::string iter_prefix);
  void WritePointFilesWithFeatures(int iter = -1);
  void WritePointFilesWithFeatures(std::string iter_prefix);
  void WriteEnergyFiles();
  void WriteCuttingPlanePoints(int iter = -1);
  void WriteParameters(int iter = -1);
  void ReportBadParticles();

  void SetParameters();
  void WriteModes();

  void PrintStartMessage(std::string str, unsigned int vlevel = 0) const;

  void PrintDoneMessage(unsigned int vlevel = 0) const;

  void UpdateExportablePoints();

  itk::MaximumEntropyCorrespondenceSampler<ImageType>::Pointer m_sampler;
  itk::ParticleProcrustesRegistration<3>::Pointer m_procrustes;
  itk::ParticleGoodBadAssessment<float, 3>::Pointer m_good_bad;

  unsigned int m_verbosity_level = 0;

  std::vector<std::vector<itk::Point<double>>>  m_local_points, m_global_points;

  int m_checkpoint_counter = 0;
  int m_procrustes_counter = 0;
  int m_saturation_counter = 0;
  bool m_disable_procrustes = true;
  bool m_disable_checkpointing = true;
  bool m_use_cutting_planes = false;
  bool m_optimizing = false;
  bool m_use_regression = false;
  bool m_use_mixed_effects = false;

  // IO Parameters
  unsigned int m_domains_per_shape = 1;
  std::vector<unsigned int> m_number_of_particles;
  std::string m_transform_file;
  std::string m_prefix_transform_file;
  std::string m_output_dir;
  std::string m_output_transform_file;
  bool m_mesh_based_attributes = false;
  std::vector<bool> m_use_xyz;
  std::vector<bool> m_use_normals;
  std::vector<int> m_attributes_per_domain;
  int m_distribution_domain_id = -1;
  std::string m_output_cutting_plane_file;

  // Optimization Parameters
  int m_processing_mode = 3;
  int m_adaptivity_mode = 0;
  double m_adaptivity_strength = 0.0;
  int m_pairwise_potential_type = 0;   // 0 - gaussian (Cates work), 1 - modified cotangent (Meyer),
  int m_optimizer_type = 2;   // 0 : jacobi, 1 : gauss seidel, 2 : adaptive gauss seidel (with bad moves)
  unsigned int m_timepts_per_subject = 1;
  int m_optimization_iterations = 2000;
  int m_optimization_iterations_completed = 0;
  int m_iterations_per_split = 1000;
  double m_init_criterion = 1e-6;
  double m_opt_criterion = 1e-6;
  bool m_use_shape_statistics_in_init = false;
  unsigned int m_procrustes_interval = 3;
  int m_procrustes_scaling = 1;
  double m_relative_weighting = 1.0;
  double m_initial_relative_weighting = 0.05;
  double m_starting_regularization = 1000;
  double m_ending_regularization = 1.0;
  int m_recompute_regularization_interval = 1;
  bool m_save_init_splits = true;
  unsigned int m_checkpointing_interval = 50;
  int m_keep_checkpoints = 0;
  double m_cotan_sigma_factor = 5.0;
  std::vector <int> m_particle_flags;
  std::vector <int> m_domain_flags;

  // Keeps track of which state the optimization is in.
  unsigned int m_mode;
  double m_spacing;

  std::vector < std::string > m_filenames;
  int m_num_shapes = 0;

  std::vector<double> m_energy_a;
  std::vector<double> m_energy_b;
  std::vector<double> m_total_energy;
  bool m_log_energy = false;
  std::string m_str_energy;

  // GoodBadAssessment
  std::vector<std::vector<int>> m_bad_ids;
  double m_normal_angle = itk::Math::pi / 2.0;
  bool m_perform_good_bad = false;

  std::vector<int> m_cutting_planes_per_input;
  std::vector<int> m_spheres_per_input;

  bool m_file_output_enabled = true;
  bool m_aborted = false;
  std::vector<ImageType::Pointer> m_images;
  std::vector<std::array<itk::Point<double>, 3 >> m_cut_planes;

  itk::MemberCommand<Optimize>::Pointer m_iterate_command;
  int m_total_iterations = 0;
  size_t m_iteration_count = 0;
};
