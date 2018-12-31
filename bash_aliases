#Misc...
alias vi='vim'
alias l='ls'
alias ll='ls -lh'

#Fix solarized scheme for tmux
alias tmux="TERM=screen-256color-bce tmux"

#default to human readable
alias du='du -h'
alias df='df -h'

#automatic resume download instead of starting over
alias wget='wget -c'

#resume tmux session if it already exists or start a new one
alias tm="tmux a -dt main || tmux new -s main"

######################
###  COLOR SUPPORT ###
######################
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -x /usr/bin/colordiff ]; then
	alias diff='colordiff'
fi

