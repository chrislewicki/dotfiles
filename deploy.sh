#!/bin/bash

if cat /etc/os-release | grep 'NAME="Ubuntu"'; then
    sudo apt-get update && sudo apt-get -y install vim zsh irssi htop screen tmux curl git wget i3 nitrogen && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && ln -s /home/$USER/dotfiles/.vimrc /home/$USER/.vimrc && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && rm ~/.zshrc && ln -s /home/$USER/dotfiles/.zshrc /home/$USER/.zshrc && ln -s /home/$USER/dotfiles/.tmux.conf /home/$USER/.tmux.conf && mkdir ~/.irssi && mkdir ~/.irssi/scripts/ && mkdir ~/.irssi/scripts/autorun && cd ~/.irssi/scripts/autorun && wget https://scripts.irssi.org/scripts/nickcolor.pl && wget https://scripts.irssi.org/scripts/nicklist.pl && cd ../../ && wget https://irssi-import.github.io/themes/furry.theme
else
    sudo pacman -Syu && sudo pacman -S vim zsh irssi htop screen tmux curl git wget i3 nitrogen && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && ln -s /home/$USER/dotfiles/.vimrc /home/$USER/.vimrc && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && rm ~/.zshrc && ln -s /home/$USER/dotfiles/.zshrc /home/$USER/.zshrc && ln -s /home/$USER/dotfiles/.tmux.conf /home/$USER/.tmux.conf && mkdir ~/.irssi && mkdir ~/.irssi/scripts/ && mkdir ~/.irssi/scripts/autorun && cd ~/.irssi/scripts/autorun && wget https://scripts.irssi.org/scripts/nickcolor.pl && wget https://scripts.irssi.org/scripts/nicklist.pl && cd ../../ && wget https://irssi-import.github.io/themes/furry.theme
fi

echo "Remember to open Vim and run :PluginInstall"
