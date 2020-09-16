alias ..="cd .."
alias ...="cd ../.."
alias code="codium"
alias df="pydf"
alias diff='meld'
alias dotfiles='cd ~/repos/dotfiles'
alias down='cd ~/Downloads'
alias du="ncdu"
alias gg='gitg'
alias gk='gitk --all'
alias gla='git config --get-regexp alias'
alias grep='grep --color=auto'
alias l='ls -C'
alias la='ls -A'
alias ll='ls -alF'
alias loc='git ls-files | xargs wc -l' # https://stackoverflow.com/a/4822516/3036129
alias ls='ls -l --human-readable --color=auto --group-directories-first'
alias lzd='lazydocker'
alias yt='youtube-dl --add-metadata -ic'
alias myip="curl http://ipecho.net/plain; echo"
alias notes='cd ~/Dropbox/notes'
alias packages='sudo apt list --installed | less'
alias pk="pkill --signal SIGTERM --echo --count" # e.g. pkill tmux
alias repl='planck'
alias repos='cd ~/repos'
alias sa='sudo apt'
alias snaps='snap list'
alias syslog='sudo tail -100f /var/log/syslog'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias vi='nvim'
alias vim='nvim'
alias webify="mogrify -resize 690\> *.png"
alias webserver='python -m http.server 8090'
alias wget="wget --continue"
alias yt='youtube-dl --add-metadata -ic' # download video
alias yta='youtube-dl --extract-audio --ignore-errors' # download only audio, in opus format
alias ytmp3='youtube-dl --ignore-errors --extract-audio --audio-format mp3' # download only audio, in mp3 format
