# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zuozhiyi/Downloads/bptree/proj1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug

# Include any dependencies generated for this target.
include test/testcase/CMakeFiles/testcase.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/testcase/CMakeFiles/testcase.dir/compiler_depend.make

# Include the progress variables for this target.
include test/testcase/CMakeFiles/testcase.dir/progress.make

# Include the compile flags for this target's objects.
include test/testcase/CMakeFiles/testcase.dir/flags.make

test/testcase/CMakeFiles/testcase.dir/codegen:
.PHONY : test/testcase/CMakeFiles/testcase.dir/codegen

test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.o: test/testcase/CMakeFiles/testcase.dir/flags.make
test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.o: /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/InsertCheck.cpp
test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.o: test/testcase/CMakeFiles/testcase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.o"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.o -MF CMakeFiles/testcase.dir/InsertCheck.cpp.o.d -o CMakeFiles/testcase.dir/InsertCheck.cpp.o -c /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/InsertCheck.cpp

test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testcase.dir/InsertCheck.cpp.i"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/InsertCheck.cpp > CMakeFiles/testcase.dir/InsertCheck.cpp.i

test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testcase.dir/InsertCheck.cpp.s"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/InsertCheck.cpp -o CMakeFiles/testcase.dir/InsertCheck.cpp.s

test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.o: test/testcase/CMakeFiles/testcase.dir/flags.make
test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.o: /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/LoadCheck.cpp
test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.o: test/testcase/CMakeFiles/testcase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.o"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.o -MF CMakeFiles/testcase.dir/LoadCheck.cpp.o.d -o CMakeFiles/testcase.dir/LoadCheck.cpp.o -c /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/LoadCheck.cpp

test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testcase.dir/LoadCheck.cpp.i"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/LoadCheck.cpp > CMakeFiles/testcase.dir/LoadCheck.cpp.i

test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testcase.dir/LoadCheck.cpp.s"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/LoadCheck.cpp -o CMakeFiles/testcase.dir/LoadCheck.cpp.s

test/testcase/CMakeFiles/testcase.dir/main.cpp.o: test/testcase/CMakeFiles/testcase.dir/flags.make
test/testcase/CMakeFiles/testcase.dir/main.cpp.o: /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/main.cpp
test/testcase/CMakeFiles/testcase.dir/main.cpp.o: test/testcase/CMakeFiles/testcase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/testcase/CMakeFiles/testcase.dir/main.cpp.o"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/testcase/CMakeFiles/testcase.dir/main.cpp.o -MF CMakeFiles/testcase.dir/main.cpp.o.d -o CMakeFiles/testcase.dir/main.cpp.o -c /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/main.cpp

test/testcase/CMakeFiles/testcase.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testcase.dir/main.cpp.i"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/main.cpp > CMakeFiles/testcase.dir/main.cpp.i

test/testcase/CMakeFiles/testcase.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testcase.dir/main.cpp.s"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase/main.cpp -o CMakeFiles/testcase.dir/main.cpp.s

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o: test/testcase/CMakeFiles/testcase.dir/flags.make
test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o: /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/BPlusTree.cpp
test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o: test/testcase/CMakeFiles/testcase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o -MF CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o.d -o CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o -c /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/BPlusTree.cpp

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.i"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/BPlusTree.cpp > CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.i

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.s"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/BPlusTree.cpp -o CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.s

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o: test/testcase/CMakeFiles/testcase.dir/flags.make
test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o: /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/DiskManager.cpp
test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o: test/testcase/CMakeFiles/testcase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o -MF CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o.d -o CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o -c /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/DiskManager.cpp

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.i"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/DiskManager.cpp > CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.i

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.s"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/DiskManager.cpp -o CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.s

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o: test/testcase/CMakeFiles/testcase.dir/flags.make
test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o: /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/def.cpp
test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o: test/testcase/CMakeFiles/testcase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o -MF CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o.d -o CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o -c /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/def.cpp

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.i"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/def.cpp > CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.i

test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.s"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zuozhiyi/Downloads/bptree/proj1/bptree/src/def.cpp -o CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.s

# Object files for target testcase
testcase_OBJECTS = \
"CMakeFiles/testcase.dir/InsertCheck.cpp.o" \
"CMakeFiles/testcase.dir/LoadCheck.cpp.o" \
"CMakeFiles/testcase.dir/main.cpp.o" \
"CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o" \
"CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o" \
"CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o"

# External object files for target testcase
testcase_EXTERNAL_OBJECTS =

test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/InsertCheck.cpp.o
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/LoadCheck.cpp.o
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/main.cpp.o
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/BPlusTree.cpp.o
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/DiskManager.cpp.o
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/__/__/bptree/src/def.cpp.o
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/build.make
test/testcase/testcase: lib/libgtest_main.a
test/testcase/testcase: lib/libgtest.a
test/testcase/testcase: test/testcase/CMakeFiles/testcase.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable testcase"
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testcase.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && /opt/homebrew/bin/cmake -D TEST_TARGET=testcase -D TEST_EXECUTABLE=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase/testcase -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=testcase_TESTS -D CTEST_FILE=/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase/testcase[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_DISCOVERY_EXTRA_ARGS= -D TEST_XML_OUTPUT_DIR= -P /opt/homebrew/share/cmake/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
test/testcase/CMakeFiles/testcase.dir/build: test/testcase/testcase
.PHONY : test/testcase/CMakeFiles/testcase.dir/build

test/testcase/CMakeFiles/testcase.dir/clean:
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase && $(CMAKE_COMMAND) -P CMakeFiles/testcase.dir/cmake_clean.cmake
.PHONY : test/testcase/CMakeFiles/testcase.dir/clean

test/testcase/CMakeFiles/testcase.dir/depend:
	cd /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zuozhiyi/Downloads/bptree/proj1 /Users/zuozhiyi/Downloads/bptree/proj1/test/testcase /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase /Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase/CMakeFiles/testcase.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/testcase/CMakeFiles/testcase.dir/depend

