#!/bin/bash

# Patrick Bauer's Epic Bash

# Source all functions.
for function in ~/.bash_functions*; do
    source $function;
done

source ~/.bash_scripts/.git-completion.bash
source ~/.bash_scripts/.aliases.bash
source ~/.bash_scripts/.aliases_machines.bash
source ~/.bash_scripts/.exports.bash
source ~/.bash_scripts/.ascii_art.bash
source ~/.bash_scripts/.emojis.bash
source ~/.bash_scripts/.prompt.bash
