alias ..='cd ..'
alias ...='cd ../..'
alias blog='cd ~/repos/personal-website/src/posts'
alias df='pydf'
alias dk='docker'
alias dotfiles='cd ~/repos/dotfiles'
alias down='cd ~/Downloads'
alias du='ncdu'
alias gg='gitg'
alias gk='gitk --all'
alias gla='git config --get-regexp alias'
alias grep='grep --color=auto'
alias l='lsd --oneline' # ls -C
alias ll='lsd --all --long --oneline' # ls -alF
alias loc='cloc --progress=1 --vcs git' # or cloc --progress=1 --vcs git --by-file
alias ls='ls -l --human-readable --color=auto --group-directories-first'
alias lzd='lazydocker'
alias myip='curl http://ipecho.net/plain; echo'
alias notes='cd ~/Dropbox/notes && lsd --oneline'
alias packages='sudo apt list --installed | less'
alias pk='pkill --signal SIGTERM --echo --count' # e.g. pkill tmux
alias repl='rlwrap bb --repl'
alias repos='cd ~/repos'
alias rm='trash'
alias sa='sudo apt'
alias snaps='snap list'
alias snippets='cd ~/Dropbox/snippets'
alias syslog='sudo tail -100f /var/log/syslog'
alias vi='nvim'
alias vim='nvim'
alias t2='tree -L 2 -I node_modules'
alias t3='tree -L 3 -I node_modules'
alias webify="mogrify -resize 690\> *.png"
alias webserver='python -m http.server 8090'
alias wget='wget --continue'
alias yt='youtube-dl --add-metadata -ic' # download video
alias yta='youtube-dl --extract-audio --ignore-errors' # download only audio, in opus format
alias ytmp3='youtube-dl --ignore-errors --extract-audio --audio-format mp3' # download only audio, in mp3 format
