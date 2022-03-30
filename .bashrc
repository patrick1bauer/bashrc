#!/bin/bash

# Patrick Bauer's Epic Bash

# Source all bash files.
for bash_file in ~/.bash_files*; do
    source $bash_file;
done

# TODO: Add git completion bash script.
# source ~/.bash_scripts/.git-completion.bash
