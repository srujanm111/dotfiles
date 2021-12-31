#!/usr/bin/env zsh

#########################
# ZSH
#########################

# Prezto
if [[ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]]; then
    echo "installing prezto"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
else
    echo "prezto already installed, will update"
fi

#########################
# VIM
#########################

# ~/.vim
mkdir -p ~/.vim ~/.vim/colors ~/.vim/plugged

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +qall
