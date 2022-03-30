#!/bin/bash

# Goes up a specified number of directories (i.e. `up 4`)
up()
{
    local d=""
    limit=$1
    for ((i = 1; i <= limit; i++)) do
        d=$d/..
    done
    d=$(echo $d | sed 's/^\///')
    if [ z "$d" ]; then
        d=..
    fi
    cd $d
}