#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Creates dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotignore='dotfiles update-index --assume-unchanged'
#Enables completion for the alias
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main


# If machine is "archslime" then use the git-prompt script
if [[ "$(uname -n)" = "archslime" ]]; then
	source ~/.config/git-prompt.sh
fi


CYAN='\[\e[0;36m\]'
GREEN='\[\e[0;32m\]'
RED='\[\e[0;31m\]'
COLOR_END='\[\e[m\]'

VISIBLE_PROMPT="${CYAN}\u@\h${WHITE} ${GREEN}\W${RED}"'$(__git_ps1 " [%s]")'"${CYAN}>"


# Notice the space at the end used as padding for commands
PS1="${VISIBLE_PROMPT}${COLOR_END} "


alias ls='lsd -lh'
alias py='python3'
