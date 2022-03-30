#!/bin/bash

# Automatically do an ll after each cd
cd()
{
    if [ -n "$1" ]; then
        builtin cd "$@" && clear && ll
    else
        builtin cd ~ && clear && ll
    fi
}