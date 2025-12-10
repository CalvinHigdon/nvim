# CalvinHigdon's **Nvim** Configurations

As one may have guessed by now, this repository's purpose is to keep track of all of my **Nvim** configurations, including all of the plugins that I use with **Nvim**, and their corresponding configuration files.
I will only update this repository when I have completely resolved any issues with any series of changes.

Linux:
Requires clang, neovim, vim, lua

Windows:
Requires CMake, neovim, vim, lua
Top level folder (nvim) should be in ...\Users\<User>\AppData\Local (Windows)
or ~/.config (Linux)

I downloaded Visual Studio 2022 and then opened the Developer Command Line for Visual Studio 2022, then opened nvim and it automatically solved a weird and annoying "No C Compiler found" error
! This ended up breaking again. instead I had to download zig, a C compiler.

For Windows:
Download neovim using chocolatey. chocolatey.org/install has the info on this
Download zig using chocolatey in an elevated powershell.

For Linux:
I'm using snap but apt should work :shrug: probably just important to be consistent.

Also install some fonts:
https://www.nerdfonts.com/font-downloads
Unpack them and move all of the TrueType/OpenType font files into C:/Windows/fonts
This will make the silly icons work

In order to install nerdfonts on Linux, refer to first_time_script.sh -- you probably shouldn't run it... but copying and pasting those things into your terminal should work...
These fonts are Droid Sans Mono and Caskaydia Mono.
Currently using Caskaydia.

Also, if you use this config on Windows, you must download zig (C/C++ compiler). GCC will be accessible automatically from Linux.

Also must install npm to install python with Mason
