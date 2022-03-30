#!/bin/bash

# Exports

# Disable the bell
if [[ $iatest > 0 ]]; then bind "set bell-style visible"; fi

# Expand the history size
export HISTFILESIZE=100000
export HISTSIZE=10000

# Append to history instead of overwriting it so if you start a new terminal, you have old session history.
shopt -s histappend
PROMPT_COMMAND='history -a'

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous on"; fi

# Sets colors for ls and all grep commands such as grep, egrep, and zgrep.

# Text color
RED='31'
YELLOW='33'
GREEN='32'
CYAN='36'
BLUE='34'
PURPLE='35'
BLACK='30'
WHITE='37'

# Text attributes
NORMAL='00'
BOLD='01'
DIM='02'
UNDERLINED='04'
BLINKING='05'
REVERSECOLORS='07'
HIDDEN='08'

# Background Colors
REDBG='41'
YELLOWBG='43'
GREENBG='42'
CYANBG='46'
BLUEBG='44'
PURPLEBG='45'
BLACKBG='40'
WHITEBG='47'

export CLICOLOR=1
# TODO: Implement ls colors.
# export LS_COLORS=
