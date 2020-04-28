# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hxu/Documents/ShapeWorks

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hxu/Documents/ShapeWorks/exe_build

# Include any dependencies generated for this target.
include Testing/MeshTests/CMakeFiles/MeshTests.dir/depend.make

# Include the progress variables for this target.
include Testing/MeshTests/CMakeFiles/MeshTests.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/MeshTests/CMakeFiles/MeshTests.dir/flags.make

Testing/MeshTests/CMakeFiles/MeshTests.dir/MeshTests.cpp.o: Testing/MeshTests/CMakeFiles/MeshTests.dir/flags.make
Testing/MeshTests/CMakeFiles/MeshTests.dir/MeshTests.cpp.o: ../Testing/MeshTests/MeshTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Testing/MeshTests/CMakeFiles/MeshTests.dir/MeshTests.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MeshTests.dir/MeshTests.cpp.o -c /home/hxu/Documents/ShapeWorks/Testing/MeshTests/MeshTests.cpp

Testing/MeshTests/CMakeFiles/MeshTests.dir/MeshTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MeshTests.dir/MeshTests.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Testing/MeshTests/MeshTests.cpp > CMakeFiles/MeshTests.dir/MeshTests.cpp.i

Testing/MeshTests/CMakeFiles/MeshTests.dir/MeshTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MeshTests.dir/MeshTests.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Testing/MeshTests/MeshTests.cpp -o CMakeFiles/MeshTests.dir/MeshTests.cpp.s

# Object files for target MeshTests
MeshTests_OBJECTS = \
"CMakeFiles/MeshTests.dir/MeshTests.cpp.o"

# External object files for target MeshTests
MeshTests_EXTERNAL_OBJECTS =

bin/MeshTests: Testing/MeshTests/CMakeFiles/MeshTests.dir/MeshTests.cpp.o
bin/MeshTests: Testing/MeshTests/CMakeFiles/MeshTests.dir/build.make
bin/MeshTests: ExternalLibs/tinyxml/libtinyxml.a
bin/MeshTests: Libs/Mesh/libMesh.a
bin/MeshTests: Libs/Mesh/libMesh.a
bin/MeshTests: Libs/Optimize/libOptimize.a
bin/MeshTests: Libs/Utils/libUtils.a
bin/MeshTests: ExternalLibs/trimesh2/libtrimesh2.a
bin/MeshTests: ../dependencies/install/lib/libITKLabelMap-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKPolynomials-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKBiasCorrection-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKDICOMParser-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOBioRad-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOBruker-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOCSV-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOGE-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOHDF5-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOJPEG2000-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOLSM-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMINC-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMRC-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOSiemens-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOSpatialObjects-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOStimulate-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOTransformHDF5-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOTransformInsightLegacy-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOTransformMatlab-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKKLMRegionGrowing-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKOptimizersv4-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKTestKernel-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKVideoIO-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKVtkGlue-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKWatersheds-5.0.so.1
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
bin/MeshTests: Libs/Particles/libParticles.a
bin/MeshTests: Libs/Optimize/libOptimize.a
bin/MeshTests: Libs/Particles/libParticles.a
bin/MeshTests: ExternalLibs/tinyxml/libtinyxml.a
bin/MeshTests: Libs/Mesh/libMesh.a
bin/MeshTests: ../dependencies/install/lib/libvgl_algo.so
bin/MeshTests: ../dependencies/install/lib/libvgl.so
bin/MeshTests: ../dependencies/install/lib/libclipper.so
bin/MeshTests: ExternalLibs/trimesh2/libtrimesh2.a
bin/MeshTests: ../dependencies/install/lib/libvtkDomainsChemistryOpenGL2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkDomainsChemistry-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersFlowPaths-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersGeneric-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersHyperTree-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersParallelImaging-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersPoints-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersProgrammable-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersSMP-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersSelection-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersTopology-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersVerdict-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkverdict-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkGUISupportQtSQL-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOSQL-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtksqlite-8.2.so.1
bin/MeshTests: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Sql.so.5.9.9
bin/MeshTests: ../dependencies/install/lib/libvtkGeovisCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkproj-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOAMR-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersAMR-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOAsynchronous-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOCityGML-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkpugixml-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOEnSight-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOExodus-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOExportOpenGL2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOExportPDF-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOExport-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingGL2PSOpenGL2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkgl2ps-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtklibharu-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOImport-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOInfovis-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtklibxml2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOLSDyna-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOMINC-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOMovie-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtktheora-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkogg-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOPLY-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOParallel-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersParallel-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkexodusII-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOGeometry-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIONetCDF-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkNetCDF-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkjsoncpp-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOParallelXML-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkParallelCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOLegacy-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOSegY-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOTecplotTable-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOVeraOut-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkhdf5_hl-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkhdf5-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOVideo-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingMorphological-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingStatistics-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingStencil-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkInteractionImage-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingContextOpenGL2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingImage-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingLOD-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingQt-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersTexture-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingVolumeOpenGL2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingMath-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkViewsContext2D-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkViewsQt-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkGUISupportQt-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkViewsInfovis-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkChartsCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingContext2D-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersImaging-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkInfovisLayout-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkInfovisCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkViewsCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingLabel-8.2.so.1
bin/MeshTests: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Widgets.so.5.9.9
bin/MeshTests: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Gui.so.5.9.9
bin/MeshTests: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Core.so.5.9.9
bin/MeshTests: Libs/Utils/libUtils.a
bin/MeshTests: Libs/Alignment/libAlignment.a
bin/MeshTests: ../dependencies/install/lib/libitkopenjpeg-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkminc2-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOIPL-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOXML-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkhdf5_cpp.so.1
bin/MeshTests: ../dependencies/install/lib/libitkhdf5.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOTransformBase-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKTransformFactory-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKOptimizers-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitklbfgs-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOBMP-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOGDCM-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkgdcmMSFF-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkgdcmDICT-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkgdcmIOD-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkgdcmDSED-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkgdcmCommon-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOGIPL-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOJPEG-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOTIFF-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitktiff-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkjpeg-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshBYU-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshFreeSurfer-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshGifti-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKgiftiio-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKEXPAT-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshOBJ-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshOFF-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshVTK-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeshBase-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKQuadEdgeMesh-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOMeta-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKMetaIO-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIONIFTI-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKniftiio-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKznz-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIONRRD-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKNrrdIO-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOPNG-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkpng-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkzlib-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOVTK-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKIOImageBase-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKVideoCore-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKVTK-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingOpenGL2-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkglew-8.2.so.1
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libSM.so
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libICE.so
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libX11.so
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libXext.so
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libXt.so
bin/MeshTests: ../dependencies/install/lib/libvtkInteractionWidgets-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersHybrid-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingGeneral-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingSources-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersModeling-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkInteractionStyle-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersExtraction-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersStatistics-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingFourier-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingHybrid-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOImage-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkDICOMParser-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkmetaio-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkpng-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtktiff-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkjpeg-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingAnnotation-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingFreeType-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkfreetype-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingColor-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingVolume-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkImagingCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkRenderingCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonColor-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersGeometry-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersSources-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersGeneral-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonComputationalGeometry-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkFiltersCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOXML-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOXMLParser-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkIOCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonExecutionModel-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonDataModel-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonMisc-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonSystem-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonTransforms-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonMath-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkCommonCore-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtksys-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkzlib-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkdoubleconversion-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtklz4-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtklzma-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libvtkexpat-8.2.so.1
bin/MeshTests: ../dependencies/install/lib/libITKStatistics-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkNetlibSlatec-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKSpatialObjects-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKMesh-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKTransform-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKPath-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKCommon-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitkdouble-conversion-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libitksys-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libITKVNLInstantiation-5.0.so.1
bin/MeshTests: ../dependencies/install/lib/libvnl_algo.so
bin/MeshTests: ../dependencies/install/lib/libvnl.so
bin/MeshTests: ../dependencies/install/lib/libv3p_netlib.so
bin/MeshTests: ../dependencies/install/lib/libnetlib.so
bin/MeshTests: ../dependencies/install/lib/libvcl.so
bin/MeshTests: /usr/lib/x86_64-linux-gnu/libgtest.a
bin/MeshTests: Testing/MeshTests/CMakeFiles/MeshTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/MeshTests"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MeshTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/MeshTests/CMakeFiles/MeshTests.dir/build: bin/MeshTests

.PHONY : Testing/MeshTests/CMakeFiles/MeshTests.dir/build

Testing/MeshTests/CMakeFiles/MeshTests.dir/clean:
	cd /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests && $(CMAKE_COMMAND) -P CMakeFiles/MeshTests.dir/cmake_clean.cmake
.PHONY : Testing/MeshTests/CMakeFiles/MeshTests.dir/clean

Testing/MeshTests/CMakeFiles/MeshTests.dir/depend:
	cd /home/hxu/Documents/ShapeWorks/exe_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxu/Documents/ShapeWorks /home/hxu/Documents/ShapeWorks/Testing/MeshTests /home/hxu/Documents/ShapeWorks/exe_build /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests /home/hxu/Documents/ShapeWorks/exe_build/Testing/MeshTests/CMakeFiles/MeshTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/MeshTests/CMakeFiles/MeshTests.dir/depend

