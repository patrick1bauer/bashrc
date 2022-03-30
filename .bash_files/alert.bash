#!/bin/bash

# Add an "alert" alias for long running commands.
# Example: `sleep 10; alert`
alert()
{
    notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"
}