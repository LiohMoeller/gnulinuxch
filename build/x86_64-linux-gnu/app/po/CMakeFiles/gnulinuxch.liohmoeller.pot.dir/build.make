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
CMAKE_SOURCE_DIR = /home/lioh/gln/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lioh/gln/test/build/x86_64-linux-gnu/app

# Utility rule file for gnulinuxch.liohmoeller.pot.

# Include any custom commands dependencies for this target.
include po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/compiler_depend.make

# Include the progress variables for this target.
include po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/progress.make

po/CMakeFiles/gnulinuxch.liohmoeller.pot:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lioh/gln/test/build/x86_64-linux-gnu/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating translation template"
	cd /home/lioh/gln/test/build/x86_64-linux-gnu/app/po && /usr/bin/intltool-extract --update --type=gettext/ini --srcdir=/home/lioh/gln/test gnulinuxch.desktop.in
	cd /home/lioh/gln/test/build/x86_64-linux-gnu/app/po && /usr/bin/xgettext -o gnulinuxch.liohmoeller.pot -D /home/lioh/gln/test/po -D /home/lioh/gln/test/build/x86_64-linux-gnu/app/po --from-code=UTF-8 --c++ --qt --language=javascript --add-comments=TRANSLATORS --keyword=tr --keyword=tr:1,2 --keyword=ctr:1c,2 --keyword=dctr:2c,3 --keyword=N_ --keyword=_ --keyword=dtr:2 --keyword=dtr:2,3 --keyword=tag --keyword=tag:1c,2 --package-name='gnulinuxch.liohmoeller' --sort-by-file ../qml/ContentDownloadDialog.qml ../qml/ContentHandler.qml ../qml/ContentPickerDialog.qml ../qml/Downloader.qml ../qml/FileExtensionMapper.js ../qml/Main.qml ../qml/MediaAccessDialog.qml ../qml/MimeTypeMapper.js ../qml/OpenDialog.qml ../qml/PickerDialog.qml ../qml/SadPage.qml ../qml/WebProcessMonitor.qml ../qml/actions/Copy.qml ../qml/actions/CopyLink.qml ../qml/actions/SaveImage.qml ../qml/actions/SaveVideo.qml ../qml/actions/Share.qml ../qml/actions/ShareLink.qml ../qml/components/BottomMenu.qml gnulinuxch.desktop.in.h
	cd /home/lioh/gln/test/build/x86_64-linux-gnu/app/po && /opt/cmake/bin/cmake -E copy gnulinuxch.liohmoeller.pot /home/lioh/gln/test/po

gnulinuxch.liohmoeller.pot: po/CMakeFiles/gnulinuxch.liohmoeller.pot
gnulinuxch.liohmoeller.pot: po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/build.make
.PHONY : gnulinuxch.liohmoeller.pot

# Rule to build all files generated by this target.
po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/build: gnulinuxch.liohmoeller.pot
.PHONY : po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/build

po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/clean:
	cd /home/lioh/gln/test/build/x86_64-linux-gnu/app/po && $(CMAKE_COMMAND) -P CMakeFiles/gnulinuxch.liohmoeller.pot.dir/cmake_clean.cmake
.PHONY : po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/clean

po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/depend:
	cd /home/lioh/gln/test/build/x86_64-linux-gnu/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lioh/gln/test /home/lioh/gln/test/po /home/lioh/gln/test/build/x86_64-linux-gnu/app /home/lioh/gln/test/build/x86_64-linux-gnu/app/po /home/lioh/gln/test/build/x86_64-linux-gnu/app/po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : po/CMakeFiles/gnulinuxch.liohmoeller.pot.dir/depend
