#!/bin/bash

# Move and go to the directory
mvg()
{
    if [ -d "$2" ]; then
        mv $1 $2 && cd $2
    else
        mv $1 $2
    fi
}