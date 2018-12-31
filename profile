#one time setup on login
export LANG=de_DE.UTF-8
export LESSCHARSET=utf-8
export TZ="Europe/Berlin"
export PAGER=less
export VISUAL=vim
export EDITOR=$VISUAL
export XEDITOR=gvim
#export REPLYTO='n1ete'
umask 027

[ -d /usr/local/go/bin ] && export PATH=$PATH:/usr/local/go/bin
[ -d ~/go ] && export GOPATH=$HOME/go
[ -d $GOPATH/bin ] && export PATH=$PATH:$GOPATH/bin
[ -d ~/bin ] && export PATH=$PATH:~/bin
