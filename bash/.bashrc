#!/usr/bin/env bash

# Bash file test operators
# https://www.tldp.org/LDP/abs/html/fto.html

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

## bash_history config #########################################################
# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
# https://stackoverflow.com/questions/19454837/bash-histsize-vs-histfilesize
HISTSIZE=1000
HISTFILESIZE=2000
# https://sanctum.geek.nz/arabesque/better-bash-history/
HISTIGNORE='ls:ll:tree:t2:t3:bg:fg:history'
HISTTIMEFORMAT='%F %T '
# Store history after each command, do not wait for the session to terminate
PROMPT_COMMAND='history -a'

## Shell optional behavior #####################################################
# https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s histappend
# one command per line, so they are easier to parse in bash_history
shopt -s cmdhist
shopt -s checkwinsize

## Aliases #####################################################################
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

## CLI tools ###################################################################

# make less more friendly for non-text input files, see lesspipe
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Source Fuzzy Finder
# https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# z to jump around directories
# https://github.com/rupa/z/
[ -x ~/bin/z.sh ] && source ~/bin/z.sh

# bash hook for direnv
# https://direnv.net/
eval "$(direnv hook bash)"

# Save shell commands to visualize them later
# https://github.com/pawamoy/shell-history
# Launch the web app with shellhistory-web. Then go to http://localhost:5000/
# only load it for interactive shells
if [[ $- == *i* ]] && command -v shellhistory-location &>/dev/null; then
    . $(shellhistory-location)
    shellhistory enable
fi

## Color prompt ################################################################

# https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt
[ -x /usr/bin/dircolors ] && eval "$(dircolors -b)"

# https://stackoverflow.com/questions/15883416/adding-git-branch-on-the-bash-command-prompt
# The git-prompt.sh script includes the function __git_ps1
[ -x ~/bin/git-prompt.sh ] && source ~/bin/git-prompt.sh

# use tput to style PS1 and PS2
# http://www.linuxcommand.org/lc3_adv_tput.php
__bold=$(tput bold) # set bold mode on
__reset=$(tput sgr0) # reset all terminal attributes (bold, colors)
if [ $(tput colors) -ge 256 ]
then
    __red=$(tput setaf 124)
    __orange=$(tput setaf 166)
    __yellow=$(tput setaf 220)
    PS1='\[$__bold\]\[$__red\][\u \w]\[$__orange\]$(__git_ps1 "(%s)")\[$__yellow\]$ \[$__reset\]'
else
    __yellow=$(tput setaf 3)
    PS1='\[$__bold\][\u \w]$(__git_ps1 "(%s)")\[$__yellow\]$ \[$__reset\]'
fi

PS2='\[$__bold\]\[$__yellow\] > \[$__reset\]'

# handy function to see the colors available for this the terminal emulator
function colorgrid() {
    iter=16
    while [ $iter -lt 52 ]
    do
        second=$[$iter+36]
        third=$[$second+36]
        four=$[$third+36]
        five=$[$four+36]
        six=$[$five+36]
        seven=$[$six+36]
        if [ $seven -gt 250 ];then seven=$[$seven-251]; fi

        echo -en "\033[38;5;$(echo $iter)m█ "
        printf "%03d" $iter
        echo -en "   \033[38;5;$(echo $second)m█ "
        printf "%03d" $second
        echo -en "   \033[38;5;$(echo $third)m█ "
        printf "%03d" $third
        echo -en "   \033[38;5;$(echo $four)m█ "
        printf "%03d" $four
        echo -en "   \033[38;5;$(echo $five)m█ "
        printf "%03d" $five
        echo -en "   \033[38;5;$(echo $six)m█ "
        printf "%03d" $six
        echo -en "   \033[38;5;$(echo $seven)m█ "
        printf "%03d" $seven

        iter=$[$iter+1]
        printf '\r\n'
    done
}

## Compilers ###################################################################

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

## Programming languages #######################################################

function __add_to_path() {
    if [[ :$PATH: == *:"$1":* ]]
    then
        # "$1 is already in PATH"
        PATH=$PATH
    else
        echo "Add $1 to PATH"
        PATH=$1:$PATH
    fi
}

# Nim
__add_to_path "$HOME/.nimble/bin"

# Rust
__add_to_path "$HOME/.cargo/bin"

# Python
__add_to_path "$HOME/.poetry/bin"
__add_to_path "$HOME/miniconda3/bin"

_pip_completion() {
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip

# nvm (Node.js Version Manager) and its autocompletion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
