#source .profile
if [ -r ~/.profile ]; then . ~/.profile; fi

#source .bashrc only if this is an interactive shell
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac

#Custom 'stuff' below this point
BASHRC_ROOT=~/.dotfiles/bash

~/.dotfiles/bin/weather.sh
echo
w
echo
if [ -f /var/run/motd.dynamic ]; then
	# Show Ubuntu update messages if they exist...
	awk '/help\.ubuntu\.com/{y=1;next}y' /var/run/motd.dynamic | grep "[0-9a-zA-Z]" --color=never
	echo
fi

# include kernel specific items
KERNEL_FILE=`uname -s`".bash"
[ -f $BASHRC_ROOT/kernel/$KERNEL_FILE ] && source $BASHRC_ROOT/kernel/$KERNEL_FILE

# include node specific items
NODE_FILE=`uname -n`".bash"
[ -f $BASHRC_ROOT/node/$NODE_FILE ] && source $BASHRC_ROOT/node/$NODE_FILE

unset BASHRC_ROOT
