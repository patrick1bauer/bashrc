#!/bin/bash

# Define colors
LIGHTGREY="\033[0;37m"
WHITE="\033[1;37m"
BLACK="\033[0;30m"
DARKGREY="\033[1;30m"
RED="\033[0;31m"
LIGHTRED="\033[1;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
LIGHTBLUE="\033[1;34m"
MAGENTA="\033[0;35m"
LIGHTMAGENTA="\033[1;35m"
CYAN="\033[0;36m"
LIGHTCYAN="\033[1;36m"
NOCOLOR="\033[0m"

# Prints the jaredBall Ascii Art
function jaredBall()
{
    echo -e "${NOCOLOR}${GREEN}"
    cat ~/ascii_art/jaredBall.txt
    echo -e "${NOCOLOR}${MAGENTA}"
}