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
include Libs/Image/CMakeFiles/ThresholdImages.dir/depend.make

# Include the progress variables for this target.
include Libs/Image/CMakeFiles/ThresholdImages.dir/progress.make

# Include the compile flags for this target's objects.
include Libs/Image/CMakeFiles/ThresholdImages.dir/flags.make

Libs/Image/CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.o: Libs/Image/CMakeFiles/ThresholdImages.dir/flags.make
Libs/Image/CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.o: ../Libs/Image/ThresholdImages.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Libs/Image/CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.o -c /home/hxu/Documents/ShapeWorks/Libs/Image/ThresholdImages.cxx

Libs/Image/CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Image/ThresholdImages.cxx > CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.i

Libs/Image/CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Image/ThresholdImages.cxx -o CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.s

# Object files for target ThresholdImages
ThresholdImages_OBJECTS = \
"CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.o"

# External object files for target ThresholdImages
ThresholdImages_EXTERNAL_OBJECTS =

bin/ThresholdImages: Libs/Image/CMakeFiles/ThresholdImages.dir/ThresholdImages.cxx.o
bin/ThresholdImages: Libs/Image/CMakeFiles/ThresholdImages.dir/build.make
bin/ThresholdImages: ../dependencies/install/lib/libITKLabelMap-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKPolynomials-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKBiasCorrection-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKDICOMParser-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOBioRad-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOBruker-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOCSV-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOGE-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOHDF5-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOJPEG2000-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOLSM-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMINC-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMRC-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOSiemens-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOSpatialObjects-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOStimulate-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOTransformHDF5-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOTransformInsightLegacy-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOTransformMatlab-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKKLMRegionGrowing-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKOptimizersv4-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKTestKernel-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKVideoIO-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKVtkGlue-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKWatersheds-5.0.so.1
bin/ThresholdImages: Libs/Utils/libUtils.a
bin/ThresholdImages: ../dependencies/install/lib/libitkopenjpeg-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkminc2-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOIPL-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOXML-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkhdf5_cpp.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkhdf5.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOTransformBase-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKTransformFactory-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKOptimizers-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitklbfgs-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOBMP-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOGDCM-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkgdcmMSFF-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkgdcmDICT-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkgdcmIOD-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkgdcmDSED-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkgdcmCommon-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOGIPL-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOJPEG-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOTIFF-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitktiff-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkjpeg-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshBYU-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshFreeSurfer-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshGifti-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKgiftiio-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKEXPAT-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshOBJ-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshOFF-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshVTK-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeshBase-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKQuadEdgeMesh-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOMeta-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKMetaIO-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIONIFTI-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKniftiio-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKznz-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIONRRD-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKNrrdIO-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOPNG-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkpng-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkzlib-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOVTK-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKIOImageBase-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKVideoCore-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKVTK-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkRenderingOpenGL2-8.2.so.1
bin/ThresholdImages: /usr/lib/x86_64-linux-gnu/libSM.so
bin/ThresholdImages: /usr/lib/x86_64-linux-gnu/libICE.so
bin/ThresholdImages: /usr/lib/x86_64-linux-gnu/libX11.so
bin/ThresholdImages: /usr/lib/x86_64-linux-gnu/libXext.so
bin/ThresholdImages: /usr/lib/x86_64-linux-gnu/libXt.so
bin/ThresholdImages: ../dependencies/install/lib/libvtkInteractionWidgets-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkInteractionStyle-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkImagingSources-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkIOImage-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkRenderingFreeType-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkfreetype-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkRenderingCore-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkFiltersSources-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkFiltersGeneral-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkFiltersCore-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkCommonExecutionModel-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkCommonDataModel-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkCommonTransforms-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkzlib-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkCommonMisc-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkCommonMath-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvtkCommonCore-8.2.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKStatistics-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkNetlibSlatec-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKSpatialObjects-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKMesh-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKTransform-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKPath-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKCommon-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitkdouble-conversion-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libitksys-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libITKVNLInstantiation-5.0.so.1
bin/ThresholdImages: ../dependencies/install/lib/libvnl_algo.so
bin/ThresholdImages: ../dependencies/install/lib/libvnl.so
bin/ThresholdImages: ../dependencies/install/lib/libv3p_netlib.so
bin/ThresholdImages: ../dependencies/install/lib/libnetlib.so
bin/ThresholdImages: ../dependencies/install/lib/libvcl.so
bin/ThresholdImages: Libs/Image/CMakeFiles/ThresholdImages.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/ThresholdImages"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThresholdImages.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Libs/Image/CMakeFiles/ThresholdImages.dir/build: bin/ThresholdImages

.PHONY : Libs/Image/CMakeFiles/ThresholdImages.dir/build

Libs/Image/CMakeFiles/ThresholdImages.dir/clean:
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image && $(CMAKE_COMMAND) -P CMakeFiles/ThresholdImages.dir/cmake_clean.cmake
.PHONY : Libs/Image/CMakeFiles/ThresholdImages.dir/clean

Libs/Image/CMakeFiles/ThresholdImages.dir/depend:
	cd /home/hxu/Documents/ShapeWorks/exe_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxu/Documents/ShapeWorks /home/hxu/Documents/ShapeWorks/Libs/Image /home/hxu/Documents/ShapeWorks/exe_build /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image /home/hxu/Documents/ShapeWorks/exe_build/Libs/Image/CMakeFiles/ThresholdImages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Libs/Image/CMakeFiles/ThresholdImages.dir/depend

