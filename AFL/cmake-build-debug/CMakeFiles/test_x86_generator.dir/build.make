# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huahua/Documents/learn_list/AFL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huahua/Documents/learn_list/AFL/cmake-build-debug

# Utility rule file for test_x86_generator.

# Include the progress variables for this target.
include CMakeFiles/test_x86_generator.dir/progress.make

CMakeFiles/test_x86_generator: test_x86.c


test_x86.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/huahua/Documents/learn_list/AFL/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating: test_x86.c"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo "main() { __asm__(\"xorb %al, %al\"); }" > /Users/huahua/Documents/learn_list/AFL/cmake-build-debug/test_x86.c

test_x86_generator: CMakeFiles/test_x86_generator
test_x86_generator: test_x86.c
test_x86_generator: CMakeFiles/test_x86_generator.dir/build.make

.PHONY : test_x86_generator

# Rule to build all files generated by this target.
CMakeFiles/test_x86_generator.dir/build: test_x86_generator

.PHONY : CMakeFiles/test_x86_generator.dir/build

CMakeFiles/test_x86_generator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_x86_generator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_x86_generator.dir/clean

CMakeFiles/test_x86_generator.dir/depend:
	cd /Users/huahua/Documents/learn_list/AFL/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huahua/Documents/learn_list/AFL /Users/huahua/Documents/learn_list/AFL /Users/huahua/Documents/learn_list/AFL/cmake-build-debug /Users/huahua/Documents/learn_list/AFL/cmake-build-debug /Users/huahua/Documents/learn_list/AFL/cmake-build-debug/CMakeFiles/test_x86_generator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_x86_generator.dir/depend

