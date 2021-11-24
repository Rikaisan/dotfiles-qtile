#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd -l'
alias py='python3'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

CYAN='\e[0;36m'
GREEN='\e[0;32m'
PURPLE='\e[0;35m'
COLOR_END='\e[m'

VISIBLE_PROMPT="${CYAN}\u@\h ${GREEN}\w${CYAN}>"

export PS1="${VISIBLE_PROMPT}${COLOR_END} "


export AUR=https://aur.archlinux.org

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

