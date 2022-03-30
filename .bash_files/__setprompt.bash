#!/bin/bash

function __setprompt
{
    local PREVIOUS_EXIT_CODE=$? # Must come first!

    # Define colors
    local LIGHTGREY="\033[0;37m"
    local WHITE="\033[1;37m"
    local BLACK="\033[0;30m"
    local DARKGREY="033[1;30m"
    local RED="\033[0;31m"

    # Get colors from terminal pallette
    export P0="$(tput setaf 0)"
    export P1="$(tput setaf 1)"
    export P2="$(tput setaf 2)"
    export P3="$(tput setaf 3)"
    export P4="$(tput setaf 4)"
    export P5="$(tput setaf 5)"
    export P6="$(tput setaf 6)"
    export P7="$(tput setaf 7)"
    
    export P8="$(tput setaf 8)"
    export P9="$(tput setaf 9)"
    export P10="$(tput setaf 10)"
    export P11="$(tput setaf 11)"
    export P12="$(tput setaf 12)"
    export P13="$(tput setaf 13)"
    export P14="$(tput setaf 14)"
    export P15="$(tput setaf 15)"

    # Patrick's Collorful Color Pallette:
    # Default Text:         #BF80FF
    # Default Background:   #0C0121
    
    #000000
    #FFDF80
    #BFFF80
    #80FF9F
    #D6EEEE
    #809FFF
    #BF80FF
    #FFFFFF

    #FF8080
    #FFDF80
    #BFFF80
    #80FF9F
    #D6EEEE
    #809FFF
    #BF80FF
    #FF80DF

    # Error code handling
    if [[ $PREVIOUS_EXIT_CODE != 0 ]]; then
        ERROR_MESSAGE="${P8}[ERROR][${PREVIOUS_EXIT_CODE}]: "
        if [[ $PREVIOUS_EXIT_CODE == 1 ]]; then
            ERROR_MESSAGE+="General error"
        elif [[ $PREVIOUS_EXIT_CODE == 2 ]]; then
            ERROR_MESSAGE+="Missing keyword, command, or permission problem"
        elif [[ $PREVIOUS_EXIT_CODE == 126 ]]; then
            ERROR_MESSAGE+="Permission problem or command is not an executable"
        elif [[ $PREVIOUS_EXIT_CODE == 127 ]]; then
            ERROR_MESSAGE+="Command not found"
        elif [[ $PREVIOUS_EXIT_CODE == 128 ]]; then
            ERROR_MESSAGE+="Invalid arguent to exit"
        elif [[ $PREVIOUS_EXIT_CODE == 129 ]]; then
            ERROR_MESSAGE+="Fatal error signal 1"
        elif [[ $PREVIOUS_EXIT_CODE == 130 ]]; then
            ERROR_MESSAGE+="Script terminated by Control-C"
        elif [[ $PREVIOUS_EXIT_CODE == 131 ]]; then
            ERROR_MESSAGE+="Fatal error signal 131"
        elif [[ $PREVIOUS_EXIT_CODE == 132 ]]; then
            ERROR_MESSAGE+="Fatal error signal 132"
        elif [[ $PREVIOUS_EXIT_CODE == 133 ]]; then
            ERROR_MESSAGE+="Fatal error signal 133"
        elif [[ $PREVIOUS_EXIT_CODE == 134 ]]; then
            ERROR_MESSAGE+="Fatal error signal 134"
        elif [[ $PREVIOUS_EXIT_CODE == 135 ]]; then
            ERROR_MESSAGE+="Fatal error signal 135"
        elif [[ $PREVIOUS_EXIT_CODE == 136 ]]; then
            ERROR_MESSAGE+="Fatal error signal 136"
        elif [[ $PREVIOUS_EXIT_CODE == 137 ]]; then
            ERROR_MESSAGE+="Fatal error signal 137"
        elif [[ $PREVIOUS_EXIT_CODE == 255 ]]; then
            ERROR_MESSAGE+="Exit status out of range"
        else
            ERROR_MESSAGE+="Unknown error code"

        echo -e "${ERROR_MESSAGE}"
        failWhale
    fi

    # PS1 is used to define the prompt

    # User
    PS1="$P1}[\u] "

    # Host Alias
    if [ "$HOSTALIAS" != "" ]; then PS1+="${YELLOWP}[${HOSTALIAS}] " fi

    # Host Name
    PS1+="${LIMEP}[\H] "

    # Net IP
    export LOCALIP=`localip`
    export NETIP=`netip`
    if [ "$LOCALIP" != "$NETIP" ]; then PS1+="${GREENP}[${NETIP}] " fi

    # Local IP
    PS1+="${GREENP}[${LOCALIP}] "

    # User Count
    export USERCOUNT=`usercount` # Number of total users on the machine.
    PS1+="${AQUAP}[${USERCOUNT}${MYEMOJI}]"

    # Current Directory
    PS1+="${BLUEP}[\${PWD#\$(echo "\${PWD%/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*}/")}]\n"

    # End Prompt, get input from user.
    PS1+="\[${PURPLEP}\]"

    # PS2 is used to continue command using the \ character
    PS2="[${DARKGREY}][${NOCOLOR}] "

    # PS3 is used to enter a number choice in a script
    PS3="Please enter a number from list: "

    # PS4 is used for tracing a script in debug mode
    PS4="[${DARKGREY}]+[${RESETP}] "
}

cecWolf

# Set the prompt & update the title of the terminal to be the current directory.
PROMPT_COMMAND='__setprompt; echo -en "\033]0; [${HOSTALIAS}] [$("pwd")] \a"'

# Update the xterm colors on startup (defined in ~/.Xresources)
# xrdb -merge ~/.Xresources