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
include Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/depend.make

# Include the progress variables for this target.
include Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/progress.make

# Include the compile flags for this target's objects.
include Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/flags.make

Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.o: Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/flags.make
Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.o: ../Libs/Alignment/ICPRigid3DMeshRegistration.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/ICPRigid3DMeshRegistration.cxx

Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/ICPRigid3DMeshRegistration.cxx > CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.i

Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/ICPRigid3DMeshRegistration.cxx -o CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.s

# Object files for target ICPRigid3DMeshRegistration
ICPRigid3DMeshRegistration_OBJECTS = \
"CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.o"

# External object files for target ICPRigid3DMeshRegistration
ICPRigid3DMeshRegistration_EXTERNAL_OBJECTS =

bin/ICPRigid3DMeshRegistration: Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/ICPRigid3DMeshRegistration.cxx.o
bin/ICPRigid3DMeshRegistration: Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/build.make
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkDomainsChemistryOpenGL2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersFlowPaths-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersGeneric-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersHyperTree-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersParallelImaging-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersPoints-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersProgrammable-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersSMP-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersSelection-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersTopology-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersVerdict-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkGUISupportQtSQL-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkGeovisCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOAMR-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOAsynchronous-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOCityGML-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOEnSight-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOExodus-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOExportOpenGL2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOExportPDF-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOImport-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOInfovis-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOLSDyna-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOMINC-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOMovie-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOPLY-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOParallel-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOParallelXML-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOSegY-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOTecplotTable-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOVeraOut-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOVideo-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingMorphological-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingStatistics-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingStencil-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkInteractionImage-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingContextOpenGL2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingImage-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingLOD-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingQt-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingVolumeOpenGL2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkViewsContext2D-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkViewsQt-8.2.so.1
bin/ICPRigid3DMeshRegistration: ExternalLibs/tinyxml/libtinyxml.a
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkDomainsChemistry-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkverdict-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOSQL-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtksqlite-8.2.so.1
bin/ICPRigid3DMeshRegistration: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Sql.so.5.9.9
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkproj-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersAMR-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkpugixml-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOExport-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingGL2PSOpenGL2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkgl2ps-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtklibharu-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtklibxml2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtktheora-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkogg-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersParallel-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkexodusII-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOGeometry-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIONetCDF-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkNetCDF-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkjsoncpp-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkParallelCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOLegacy-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkhdf5_hl-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkhdf5-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersTexture-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingMath-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkGUISupportQt-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingOpenGL2-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkglew-8.2.so.1
bin/ICPRigid3DMeshRegistration: /usr/lib/x86_64-linux-gnu/libSM.so
bin/ICPRigid3DMeshRegistration: /usr/lib/x86_64-linux-gnu/libICE.so
bin/ICPRigid3DMeshRegistration: /usr/lib/x86_64-linux-gnu/libX11.so
bin/ICPRigid3DMeshRegistration: /usr/lib/x86_64-linux-gnu/libXext.so
bin/ICPRigid3DMeshRegistration: /usr/lib/x86_64-linux-gnu/libXt.so
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkViewsInfovis-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkChartsCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingContext2D-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersImaging-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkInfovisLayout-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkInfovisCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkViewsCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkInteractionWidgets-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersHybrid-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingGeneral-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingSources-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersModeling-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkInteractionStyle-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersExtraction-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersStatistics-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingFourier-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingHybrid-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOImage-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkDICOMParser-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkmetaio-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkpng-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtktiff-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkjpeg-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingAnnotation-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingColor-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingVolume-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkImagingCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOXML-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOXMLParser-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkIOCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkdoubleconversion-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtklz4-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtklzma-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkexpat-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingLabel-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingFreeType-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkRenderingCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonColor-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersGeometry-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersSources-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersGeneral-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonComputationalGeometry-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkFiltersCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonExecutionModel-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonDataModel-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonMisc-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonSystem-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonTransforms-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonMath-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkCommonCore-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtksys-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkfreetype-8.2.so.1
bin/ICPRigid3DMeshRegistration: ../dependencies/install/lib/libvtkzlib-8.2.so.1
bin/ICPRigid3DMeshRegistration: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Widgets.so.5.9.9
bin/ICPRigid3DMeshRegistration: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Gui.so.5.9.9
bin/ICPRigid3DMeshRegistration: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Core.so.5.9.9
bin/ICPRigid3DMeshRegistration: Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/ICPRigid3DMeshRegistration"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ICPRigid3DMeshRegistration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/build: bin/ICPRigid3DMeshRegistration

.PHONY : Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/build

Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/clean:
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && $(CMAKE_COMMAND) -P CMakeFiles/ICPRigid3DMeshRegistration.dir/cmake_clean.cmake
.PHONY : Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/clean

Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/depend:
	cd /home/hxu/Documents/ShapeWorks/exe_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxu/Documents/ShapeWorks /home/hxu/Documents/ShapeWorks/Libs/Alignment /home/hxu/Documents/ShapeWorks/exe_build /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Libs/Alignment/CMakeFiles/ICPRigid3DMeshRegistration.dir/depend

