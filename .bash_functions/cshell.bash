#!/bin/bash

# Switch to the C Shell.
cshell ()
{
    if [ -x /bin/csh ]; then
        SHELL="/bin/csh"
        exec /bin/csh
        if [ -f ~/.cshrc ]; then
            source ~/.cshrc
        fi
    fi
}