#!/usr/bin/env zsh

#########################
# Starship
#########################

curl -sS https://starship.rs/install.sh | sh

#########################
# ZSH
#########################

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZDOTDIR:-$HOME}"/zsh-autosuggestions

# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZDOTDIR:-$HOME}"/zsh-syntax-highlighting

#########################
# VIM
#########################

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +qall
