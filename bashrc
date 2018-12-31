# ~/.bashrc: executed by bash(1) for non-login shells.

# lazy way to make sure everything is up-to-date
# there is a cron job that does a git pull once a day...
~/.dotfiles/setup.sh

# allow local server customization
[ -f .bashrc_local  ] && source .bashrc_local

# set some shell options
shopt -s autocd		#faster cd'ing
shopt -s cdspell	#fix typos when cd'ing
shopt -s checkjobs	#list running jobs before exiting the shell
shopt -s checkwinsize	#keep rows/cols updated
shopt -s cmdhist	#multi-line cmds in same history entry
shopt -s dirspell	#spell correct directory names
shopt -s extglob	#extended pattern matching
shopt -s globstar	#recursive globbing e.g. `echo **/*.txt`
shopt -s histappend	#append... don't overwrite

export HISTIGNORE="?:??:exit:pwd:clear"
export HISTCONTROL=ignoreboth	# don't put duplicate lines or lines starting with space in the history.
export HISTSIZE=1000
export HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

#force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

[ -f .bash_aliases ] && source .bash_aliases

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
