# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MaxFlowMinCut.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MaxFlowMinCut.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MaxFlowMinCut.dir/flags.make

CMakeFiles/MaxFlowMinCut.dir/main.cpp.obj: CMakeFiles/MaxFlowMinCut.dir/flags.make
CMakeFiles/MaxFlowMinCut.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MaxFlowMinCut.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MaxFlowMinCut.dir\main.cpp.obj -c C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\main.cpp

CMakeFiles/MaxFlowMinCut.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MaxFlowMinCut.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\main.cpp > CMakeFiles\MaxFlowMinCut.dir\main.cpp.i

CMakeFiles/MaxFlowMinCut.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MaxFlowMinCut.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\main.cpp -o CMakeFiles\MaxFlowMinCut.dir\main.cpp.s

# Object files for target MaxFlowMinCut
MaxFlowMinCut_OBJECTS = \
"CMakeFiles/MaxFlowMinCut.dir/main.cpp.obj"

# External object files for target MaxFlowMinCut
MaxFlowMinCut_EXTERNAL_OBJECTS =

MaxFlowMinCut.exe: CMakeFiles/MaxFlowMinCut.dir/main.cpp.obj
MaxFlowMinCut.exe: CMakeFiles/MaxFlowMinCut.dir/build.make
MaxFlowMinCut.exe: CMakeFiles/MaxFlowMinCut.dir/linklibs.rsp
MaxFlowMinCut.exe: CMakeFiles/MaxFlowMinCut.dir/objects1.rsp
MaxFlowMinCut.exe: CMakeFiles/MaxFlowMinCut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MaxFlowMinCut.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MaxFlowMinCut.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MaxFlowMinCut.dir/build: MaxFlowMinCut.exe

.PHONY : CMakeFiles/MaxFlowMinCut.dir/build

CMakeFiles/MaxFlowMinCut.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MaxFlowMinCut.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MaxFlowMinCut.dir/clean

CMakeFiles/MaxFlowMinCut.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\cmake-build-debug C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\cmake-build-debug C:\Users\Alexander\Desktop\Projects\Assignment7\MaxFlowMinCut\cmake-build-debug\CMakeFiles\MaxFlowMinCut.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MaxFlowMinCut.dir/depend
