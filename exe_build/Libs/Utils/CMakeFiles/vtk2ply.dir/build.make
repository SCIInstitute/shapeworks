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
include Libs/Utils/CMakeFiles/vtk2ply.dir/depend.make

# Include the progress variables for this target.
include Libs/Utils/CMakeFiles/vtk2ply.dir/progress.make

# Include the compile flags for this target's objects.
include Libs/Utils/CMakeFiles/vtk2ply.dir/flags.make

Libs/Utils/CMakeFiles/vtk2ply.dir/vtk2ply.cxx.o: Libs/Utils/CMakeFiles/vtk2ply.dir/flags.make
Libs/Utils/CMakeFiles/vtk2ply.dir/vtk2ply.cxx.o: ../Libs/Utils/vtk2ply.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Libs/Utils/CMakeFiles/vtk2ply.dir/vtk2ply.cxx.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vtk2ply.dir/vtk2ply.cxx.o -c /home/hxu/Documents/ShapeWorks/Libs/Utils/vtk2ply.cxx

Libs/Utils/CMakeFiles/vtk2ply.dir/vtk2ply.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtk2ply.dir/vtk2ply.cxx.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Utils/vtk2ply.cxx > CMakeFiles/vtk2ply.dir/vtk2ply.cxx.i

Libs/Utils/CMakeFiles/vtk2ply.dir/vtk2ply.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtk2ply.dir/vtk2ply.cxx.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Utils/vtk2ply.cxx -o CMakeFiles/vtk2ply.dir/vtk2ply.cxx.s

# Object files for target vtk2ply
vtk2ply_OBJECTS = \
"CMakeFiles/vtk2ply.dir/vtk2ply.cxx.o"

# External object files for target vtk2ply
vtk2ply_EXTERNAL_OBJECTS =

bin/vtk2ply: Libs/Utils/CMakeFiles/vtk2ply.dir/vtk2ply.cxx.o
bin/vtk2ply: Libs/Utils/CMakeFiles/vtk2ply.dir/build.make
bin/vtk2ply: ../dependencies/install/lib/libvtkDomainsChemistryOpenGL2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersFlowPaths-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersGeneric-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersHyperTree-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersParallelImaging-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersPoints-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersProgrammable-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersSMP-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersSelection-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersTopology-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersVerdict-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkGUISupportQtSQL-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkGeovisCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOAMR-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOAsynchronous-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOCityGML-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOEnSight-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOExodus-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOExportOpenGL2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOExportPDF-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOImport-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOInfovis-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOLSDyna-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOMINC-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOMovie-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOPLY-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOParallel-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOParallelXML-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOSegY-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOTecplotTable-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOVeraOut-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOVideo-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingMorphological-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingStatistics-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingStencil-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkInteractionImage-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingContextOpenGL2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingImage-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingLOD-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingQt-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingVolumeOpenGL2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkViewsContext2D-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkViewsQt-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkDomainsChemistry-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkverdict-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOSQL-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtksqlite-8.2.so.1
bin/vtk2ply: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Sql.so.5.9.9
bin/vtk2ply: ../dependencies/install/lib/libvtkproj-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersAMR-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkpugixml-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOExport-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingGL2PSOpenGL2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkgl2ps-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtklibharu-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtklibxml2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtktheora-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkogg-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersParallel-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkexodusII-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOGeometry-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIONetCDF-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkNetCDF-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkjsoncpp-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkParallelCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOLegacy-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkhdf5_hl-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkhdf5-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersTexture-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingMath-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkGUISupportQt-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingOpenGL2-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkglew-8.2.so.1
bin/vtk2ply: /usr/lib/x86_64-linux-gnu/libSM.so
bin/vtk2ply: /usr/lib/x86_64-linux-gnu/libICE.so
bin/vtk2ply: /usr/lib/x86_64-linux-gnu/libX11.so
bin/vtk2ply: /usr/lib/x86_64-linux-gnu/libXext.so
bin/vtk2ply: /usr/lib/x86_64-linux-gnu/libXt.so
bin/vtk2ply: ../dependencies/install/lib/libvtkViewsInfovis-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkChartsCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingContext2D-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersImaging-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkInfovisLayout-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkInfovisCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkViewsCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkInteractionWidgets-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersHybrid-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingGeneral-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingSources-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersModeling-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkInteractionStyle-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersExtraction-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersStatistics-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingFourier-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingHybrid-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOImage-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkDICOMParser-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkmetaio-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkpng-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtktiff-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkjpeg-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingAnnotation-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingColor-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingVolume-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkImagingCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOXML-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOXMLParser-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkIOCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkdoubleconversion-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtklz4-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtklzma-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkexpat-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingLabel-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingFreeType-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkRenderingCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonColor-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersGeometry-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersSources-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersGeneral-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonComputationalGeometry-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkFiltersCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonExecutionModel-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonDataModel-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonMisc-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonSystem-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonTransforms-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonMath-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkCommonCore-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtksys-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkfreetype-8.2.so.1
bin/vtk2ply: ../dependencies/install/lib/libvtkzlib-8.2.so.1
bin/vtk2ply: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Widgets.so.5.9.9
bin/vtk2ply: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Gui.so.5.9.9
bin/vtk2ply: /home/hxu/Software/Qt5.9.9/5.9.9/gcc_64/lib/libQt5Core.so.5.9.9
bin/vtk2ply: Libs/Utils/CMakeFiles/vtk2ply.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/vtk2ply"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtk2ply.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Libs/Utils/CMakeFiles/vtk2ply.dir/build: bin/vtk2ply

.PHONY : Libs/Utils/CMakeFiles/vtk2ply.dir/build

Libs/Utils/CMakeFiles/vtk2ply.dir/clean:
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils && $(CMAKE_COMMAND) -P CMakeFiles/vtk2ply.dir/cmake_clean.cmake
.PHONY : Libs/Utils/CMakeFiles/vtk2ply.dir/clean

Libs/Utils/CMakeFiles/vtk2ply.dir/depend:
	cd /home/hxu/Documents/ShapeWorks/exe_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxu/Documents/ShapeWorks /home/hxu/Documents/ShapeWorks/Libs/Utils /home/hxu/Documents/ShapeWorks/exe_build /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils /home/hxu/Documents/ShapeWorks/exe_build/Libs/Utils/CMakeFiles/vtk2ply.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Libs/Utils/CMakeFiles/vtk2ply.dir/depend

