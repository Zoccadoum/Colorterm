#!/bin/bash
# Bash colorterm
#
# Terminal color definitions for use in bash scripts.
# Much of this was gathered from the info here:
# https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-bash-ps1-prompt
# and here:
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
#
# Note: this file should be installed in /usr/share/colorterm where it
# can be found by other scripts.  Since it's only sourced, it doesn't 
# need to be flagged as executable.

# Liscense
# GNU General Public License v3.0


# Inclusion protection
[ -n "${_COLORTERM_LOADED:-}" ] && return 0
declare -r _COLORTERM_LOADED=1

# Normal / Default  - Revert back to the console's default display colors.
declare -r Normal='\033[0m';
declare -r Default='\033[0m';

if [ ${TERM:-} =~ 256color ]; then
    # Use the 256 color terminal notation
    # Colors (Used for colored terminal output)
    #             color     foreground                        background
    #-----------------------------------------------------------------
    #\\033[38;5;${color}m
    # Define the basic colors 
    declare -r  White='\033[38;5;015m'
    declare -r  Black='\033[38;5;232m'
    declare -r  Gray='\033[38;5;240m'
    declare -r  Red='\033[38;5;009m'
    declare -r  Blue='\033[38;5;012m'
    declare -r  Green='\033[38;5;010m'
    declare -r  Yellow='\033[38;5;011m'
    declare -r  Magenta='\033[38;5;013m'
    declare -r  Cyan='\033[38;5;014m'
    declare -r  Bold='\033[1m'

    declare -r  LightGray='\033[38;5;250m'
    declare -r  LightRed='\033[38;5;001m'
    declare -r  LightBlue='\033[38;5;004m'
    declare -r  LightGreen='\033[38;5;002m'
    declare -r  LightYellow='\033[38;5;003m'
    declare -r  LightMagenta='\033[38;5;005m'
    declare -r  LightCyan='\033[38;5;0006m'
    
    declare -r  White_bg='\033[48;5;015m'
    declare -r  Black_bg='\033[48;5;000m'
    declare -r  Gray_bg='\033[48;5;008m'
    declare -r  Red_bg='\033[48;5;001m'
    declare -r  Blue_bg='\033[48;5;004m'
    declare -r  Green_bg='\033[48;5;002m'
    declare -r  Yellow_bg='\033[48;5;003m'
    declare -r  Magenta_bg='\033[48;5;005m'
    declare -r  Cyan_bg='\033[48;5;006m'

    declare -r  LightGray_bg='\033[48;5;007m'
    declare -r  LightRed_bg='\033[48;5;009m'
    declare -r  LightBlue_bg='\033[48;5;012m'
    declare -r  LightGreen_bg='\033[48;5;010m'
    declare -r  LightYellow_bg='\033[48;5;011m'
    declare -r  LightMagenta_bg='\033[48;5;013m'
    declare -r  LightCyan_bg='\033[48;5;014m'

    declare -r  Italic='\033[3m'   # Italic text
else
    # generic ANSI 16 color terminal
    # Colors (Used for colored terminal output)
    #             color     foreground                        background
    #-----------------------------------------------------------------
    declare -r  Black='\033[1;30m';        declare -r  Black_bg='\033[40m'
    declare -r  Red='\033[1;31m';          declare -r  Red_bg='\033[41m'
    declare -r  Green='\033[1;32m';        declare -r  Green_bg='\033[42m'
    declare -r  Yellow='\033[1;33m';       declare -r  Yellow_bg='\033[43m'
    declare -r  Blue='\033[1;34m';         declare -r  Blue_bg='\033[44m'
    declare -r  Magenta='\033[1;35m';      declare -r  Magenta_bg='\033[45m'
    declare -r  Cyan='\033[1;36m';         declare -r  Cyan_bg='\033[46m'
    declare -r  LightGray='\033[1;37m';    declare -r  LightGray_bg='\033[47m'
    declare -r  Gray='\033[1;90m';         declare -r  Gray_bg='\033[100m'
    declare -r  LightRed='\033[1;91m';     declare -r  LightRed_bg='\033[101m'
    declare -r  LightGreen='\033[1;92m';   declare -r  LightGreen_bg='\033[102m'
    declare -r  LightYellow='\033[1;93m';  declare -r  LightYellow_bg='\033[103m'
    declare -r  LightBlue='\033[1;94m';    declare -r  LightBlue_bg='\033[104m'
    declare -r  LightMagenta='\033[1;95m';  declare -r  LightMagenta_bg='\033[105m'
    declare -r  LightCyan='\033[1;96m';    declare -r  LightCyan_bg='\033[106m'
    declare -r  White='\033[1;97m';         declare -r  White_bg='\033[107m'

    declare -r  Italic='\033[1;0m'
fi

# Show a sample of all available terminal colors in a 16 color terminal:
show_terminal_colors() {
    printf " Text colors\n"
    printf -- "----------------------------------------------------------\n"

    local column1="\033[50D\033[4C"
    local column2="\033[50D\033[30C"

    printf "${column1}${Black}Black ${Default} \n"
    printf "${column1}${White}White ${Default} \n"
    printf "${column1}${Gray}Gray ${Default} ${column2}${LightGray}LightGray${Default}\n"
    printf "${column1}${Red}Red ${Default} ${column2}${LightRed}LightRed${Default}\n"
    printf "${column1}${Blue}Blue ${Default} ${column2}${LightBlue}LightBlue${Default}\n"
    printf "${column1}${Green}Green ${Default} ${column2}${LightGreen}LightGreen${Default}\n"
    printf "${column1}${Yellow}Yellow ${Default} ${column2}${LightYellow}LightYellow${Default}\n"
    printf "${column1}${Cyan}Cyan ${Default} ${column2}${LightCyan}LightCyan${Default}\n"
    printf "${column1}${Magenta}Magenta ${Default} ${column2}${LightMagenta}LightMagenta${Default}\n"


    printf -- "----------------------------------------------------------\n"
    printf " Background colors\n"
    printf -- "----------------------------------------------------------\n"

    printf "${column1}${White}${Black_bg}Black ${Default}\n"
    printf "${column1}${Black}${White_bg}White ${Default}\n"
    printf "${column1}${Black}${Gray_bg}Gray ${Default} ${column2}${Black}${LightGray_bg}LightGray_bg${Default}\n"
    printf "${column1}${Black}${Red_bg}Red ${Default} ${column2}${Black}${LightRed_bg}LightRed_bg${Default}\n"
    printf "${column1}${Black}${Blue_bg}Blue ${Default} ${column2}${Black}${LightBlue_bg}LightBlue_bg${Default}\n"
    printf "${column1}${Black}${Green_bg}Green ${Default} ${column2}${Black}${LightGreen_bg}LightGreen_bg${Default}\n"
    printf "${column1}${Black}${Yellow_bg}Yellow ${Default} ${column2}${Black}${LightYellow_bg}LightYellow_bg${Default}\n"
    printf "${column1}${Black}${Cyan_bg}Cyan ${Default} ${column2}${Black}${LightCyan_bg}LightCyan_bg${Default}\n"
    printf "${column1}${Black}${Magenta_bg}Magenta ${Default} ${column2}${Black}${LightMagenta_bg}LightMagenta_bg${Default}\n"

    printf -- "----------------------------------------------------------\n"

}

# Show a sample of all available 256 color terminal colors:
show_256_colors() {
    local fgbg
    local color
    if [ ${TERM:-} =~ 256color ]; then
        for fgbg in 38 48 ; do # Foreground / Background
            for color in {0..255} ; do # Colors
                # Display the color
                printf "\033[${fgbg};5;%sm  %3s  \033[0m" ${color} ${color}
                # Display 6 colors per lines
                if [ $((($color + 1) % 6)) == 4 ] ; then
                    echo # New line
                fi
            done
            echo # New line
        done
    else
        echo "256 color output is not available for this terminal."
    fi
}

