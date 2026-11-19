# Colorterm
Utility script for adding color to bash script output. I created this to use mostly for bash. I have only done minimal testing on dash but it may work on other shells.


Installation instructions:

Download the colorterm.sh script and place it in a shared directory.  Usually something like "/usr/share/colorterm".  You can then source it from other scripts and use the color definitions as desired.


Usage Example:
------------------------------------------------
. /usr/share/colorterm.sh

printf "${Green}Hello World${Normal}\n"
------------------------------------------------

Note that when setting the color into the terminal output, the terminal will continue to use that color until something else changes it.  Use the ${Normal} variable to reset the terminal to its default state.

Enjoy.

