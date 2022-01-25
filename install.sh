#!/usr/bin/env zsh

#########################
# ZSH
#########################

# Prezto
if [[ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]]; then
    echo "installing prezto"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
else
    echo "prezto already installed, updating"
    cd "${ZDOTDIR:-$HOME}/.zprezto"
    git pull
    git submodule update --init --recursive
    cd -
fi

#########################
# VIM
#########################

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +qall
