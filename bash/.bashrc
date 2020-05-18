#!/usr/bin/env bash

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

## Shell optional behavior #####################################################
# https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s histappend
shopt -s checkwinsize

## Aliases #####################################################################
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## CLI tools ###################################################################

# make less more friendly for non-text input files, see lesspipe
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Source Fuzzy Finder if available https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# bash hook for direnv https://direnv.net/
eval "$(direnv hook bash)"

## Color prompt ################################################################
# https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt

if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
fi

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

function __parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function __make_color_prompt() {
    local bold="01"
    local fg="38;5" #foreground
    local bg="48;5" # background
    local raa="\e[00m" # reset all attributes
    local __user_and_cwd="[\e[$bold;$fg;166m\]\u \w$raa]"
    local __git_branch_color="\e[$bold;$fg;200m"
    PS1="$__user_and_cwd$__git_branch_color$(__parse_git_branch)$raa$ "
}
__make_color_prompt

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
        echo "$1 is already in PATH"
    else
        echo "Add $1 to PATH"
        PATH=$1:$PATH
    fi
}

# Go
__add_to_path "$HOME/go"
__add_to_path "/usr/local/go/bin"

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
