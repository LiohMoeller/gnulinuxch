# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lioh/gln/gnulinuxch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app

# Utility rule file for gnulinuxch.desktop.

# Include any custom commands dependencies for this target.
include CMakeFiles/gnulinuxch.desktop.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gnulinuxch.desktop.dir/progress.make

CMakeFiles/gnulinuxch.desktop:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Merging translations into gnulinuxch.desktop..."
	LC_ALL=C /usr/bin/intltool-merge -d -u /home/lioh/gln/gnulinuxch/po /home/lioh/gln/gnulinuxch/gnulinuxch.desktop.in gnulinuxch.desktop
	sed -i 's/gnulinuxch-//g' /home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app/gnulinuxch.desktop

gnulinuxch.desktop: CMakeFiles/gnulinuxch.desktop
gnulinuxch.desktop: CMakeFiles/gnulinuxch.desktop.dir/build.make
.PHONY : gnulinuxch.desktop

# Rule to build all files generated by this target.
CMakeFiles/gnulinuxch.desktop.dir/build: gnulinuxch.desktop
.PHONY : CMakeFiles/gnulinuxch.desktop.dir/build

CMakeFiles/gnulinuxch.desktop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gnulinuxch.desktop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gnulinuxch.desktop.dir/clean

CMakeFiles/gnulinuxch.desktop.dir/depend:
	cd /home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lioh/gln/gnulinuxch /home/lioh/gln/gnulinuxch /home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app /home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app /home/lioh/gln/gnulinuxch/build/x86_64-linux-gnu/app/CMakeFiles/gnulinuxch.desktop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gnulinuxch.desktop.dir/depend

