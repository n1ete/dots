#!/usr/bin/env sh
DOTFILES=~/.dotfiles

#ssh
mkdir -p ~/.ssh
chmod 700 ~/.ssh/
ln -fs $DOTFILES/.ssh/config ~/.ssh/config &

#gpg
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg/ /
ln -fs $DOTFILES/.gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf &

#shared defaults for all shells
ln -fs $DOTFILES/.profile ~/.profile &
ln -fs $DOTFILES/.inputrc ~/.inputrc &
ln -fs $DOTFILES/.dircolors ~/.dircolors &

#bash
ln -fs $DOTFILES/.bash_profile ~/.bash_profile &
ln -fs $DOTFILES/.bashrc ~/.bashrc &
ln -fs $DOTFILES/.bash_logout ~/.bash_logout &
ln -fs $DOTFILES/.bash_aliases ~/.bash_aliases &

#git
ln -fs $DOTFILES/.gitconfig ~/.gitconfig &
