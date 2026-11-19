# Colorterm
Utility script for adding color to bash script output. I created this to use mostly for bash. I have only done mimimal testing on dash but it should work on other x-nix shells.


Installation instructions:

Download the colorterm.sh script and place it in a shared directory.  Usually something like "/usr/share/colorterm".  You can then source it from other scripts and use the color definitions as desired.


Usage Example:
------------------------------------------------
source /usr/share/colorterm.sh

printf "${Green}Hello World${Normal}\n"
------------------------------------------------

Note that when setting the color into the terminal output, the terminal will continue to use that color until something else changes it.  Use the ${Normal} variable to reset the terminal to is default state.

Enjoy.

