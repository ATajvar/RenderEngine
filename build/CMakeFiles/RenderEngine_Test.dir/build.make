# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ariant/Documents/RenderEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ariant/Documents/RenderEngine/build

# Include any dependencies generated for this target.
include CMakeFiles/RenderEngine_Test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RenderEngine_Test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RenderEngine_Test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RenderEngine_Test.dir/flags.make

CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o: CMakeFiles/RenderEngine_Test.dir/flags.make
CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o: /Users/ariant/Documents/RenderEngine/src/tests/test_main.cpp
CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o: CMakeFiles/RenderEngine_Test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ariant/Documents/RenderEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o -MF CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o.d -o CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o -c /Users/ariant/Documents/RenderEngine/src/tests/test_main.cpp

CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ariant/Documents/RenderEngine/src/tests/test_main.cpp > CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.i

CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ariant/Documents/RenderEngine/src/tests/test_main.cpp -o CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.s

# Object files for target RenderEngine_Test
RenderEngine_Test_OBJECTS = \
"CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o"

# External object files for target RenderEngine_Test
RenderEngine_Test_EXTERNAL_OBJECTS =

RenderEngine_Test: CMakeFiles/RenderEngine_Test.dir/src/tests/test_main.cpp.o
RenderEngine_Test: CMakeFiles/RenderEngine_Test.dir/build.make
RenderEngine_Test: lib/libgtest.a
RenderEngine_Test: lib/libgtest_main.a
RenderEngine_Test: lib/libgtest.a
RenderEngine_Test: CMakeFiles/RenderEngine_Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/ariant/Documents/RenderEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RenderEngine_Test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RenderEngine_Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RenderEngine_Test.dir/build: RenderEngine_Test
.PHONY : CMakeFiles/RenderEngine_Test.dir/build

CMakeFiles/RenderEngine_Test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RenderEngine_Test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RenderEngine_Test.dir/clean

CMakeFiles/RenderEngine_Test.dir/depend:
	cd /Users/ariant/Documents/RenderEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ariant/Documents/RenderEngine /Users/ariant/Documents/RenderEngine /Users/ariant/Documents/RenderEngine/build /Users/ariant/Documents/RenderEngine/build /Users/ariant/Documents/RenderEngine/build/CMakeFiles/RenderEngine_Test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RenderEngine_Test.dir/depend

