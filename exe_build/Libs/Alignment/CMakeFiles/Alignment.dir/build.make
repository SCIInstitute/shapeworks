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
include Libs/Alignment/CMakeFiles/Alignment.dir/depend.make

# Include the progress variables for this target.
include Libs/Alignment/CMakeFiles/Alignment.dir/progress.make

# Include the compile flags for this target's objects.
include Libs/Alignment/CMakeFiles/Alignment.dir/flags.make

Libs/Alignment/CMakeFiles/Alignment.dir/Procrustes3D.cpp.o: Libs/Alignment/CMakeFiles/Alignment.dir/flags.make
Libs/Alignment/CMakeFiles/Alignment.dir/Procrustes3D.cpp.o: ../Libs/Alignment/Procrustes3D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Libs/Alignment/CMakeFiles/Alignment.dir/Procrustes3D.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Alignment.dir/Procrustes3D.cpp.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/Procrustes3D.cpp

Libs/Alignment/CMakeFiles/Alignment.dir/Procrustes3D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Alignment.dir/Procrustes3D.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/Procrustes3D.cpp > CMakeFiles/Alignment.dir/Procrustes3D.cpp.i

Libs/Alignment/CMakeFiles/Alignment.dir/Procrustes3D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Alignment.dir/Procrustes3D.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/Procrustes3D.cpp -o CMakeFiles/Alignment.dir/Procrustes3D.cpp.s

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.o: Libs/Alignment/CMakeFiles/Alignment.dir/flags.make
Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.o: ../Libs/Alignment/Transforms/itkAdvancedTransform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkAdvancedTransform.cpp

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkAdvancedTransform.cpp > CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.i

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkAdvancedTransform.cpp -o CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.s

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.o: Libs/Alignment/CMakeFiles/Alignment.dir/flags.make
Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.o: ../Libs/Alignment/Transforms/itkSparseKernelTransform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkSparseKernelTransform.cpp

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkSparseKernelTransform.cpp > CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.i

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkSparseKernelTransform.cpp -o CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.s

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.o: Libs/Alignment/CMakeFiles/Alignment.dir/flags.make
Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.o: ../Libs/Alignment/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp > CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.i

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp -o CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.s

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.o: Libs/Alignment/CMakeFiles/Alignment.dir/flags.make
Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.o: ../Libs/Alignment/Transforms/itkThinPlateSplineKernelTransform2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkThinPlateSplineKernelTransform2.cpp

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkThinPlateSplineKernelTransform2.cpp > CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.i

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkThinPlateSplineKernelTransform2.cpp -o CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.s

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.o: Libs/Alignment/CMakeFiles/Alignment.dir/flags.make
Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.o: ../Libs/Alignment/Transforms/itkKernelTransform2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.o"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.o -c /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkKernelTransform2.cpp

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.i"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkKernelTransform2.cpp > CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.i

Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.s"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hxu/Documents/ShapeWorks/Libs/Alignment/Transforms/itkKernelTransform2.cpp -o CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.s

# Object files for target Alignment
Alignment_OBJECTS = \
"CMakeFiles/Alignment.dir/Procrustes3D.cpp.o" \
"CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.o" \
"CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.o" \
"CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.o" \
"CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.o" \
"CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.o"

# External object files for target Alignment
Alignment_EXTERNAL_OBJECTS =

Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/Procrustes3D.cpp.o
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkAdvancedTransform.cpp.o
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkSparseKernelTransform.cpp.o
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkCompactlySupportedRBFSparseKernelTransform.cpp.o
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkThinPlateSplineKernelTransform2.cpp.o
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/Transforms/itkKernelTransform2.cpp.o
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/build.make
Libs/Alignment/libAlignment.a: Libs/Alignment/CMakeFiles/Alignment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hxu/Documents/ShapeWorks/exe_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libAlignment.a"
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && $(CMAKE_COMMAND) -P CMakeFiles/Alignment.dir/cmake_clean_target.cmake
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Alignment.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Libs/Alignment/CMakeFiles/Alignment.dir/build: Libs/Alignment/libAlignment.a

.PHONY : Libs/Alignment/CMakeFiles/Alignment.dir/build

Libs/Alignment/CMakeFiles/Alignment.dir/clean:
	cd /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment && $(CMAKE_COMMAND) -P CMakeFiles/Alignment.dir/cmake_clean.cmake
.PHONY : Libs/Alignment/CMakeFiles/Alignment.dir/clean

Libs/Alignment/CMakeFiles/Alignment.dir/depend:
	cd /home/hxu/Documents/ShapeWorks/exe_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hxu/Documents/ShapeWorks /home/hxu/Documents/ShapeWorks/Libs/Alignment /home/hxu/Documents/ShapeWorks/exe_build /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment /home/hxu/Documents/ShapeWorks/exe_build/Libs/Alignment/CMakeFiles/Alignment.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Libs/Alignment/CMakeFiles/Alignment.dir/depend

