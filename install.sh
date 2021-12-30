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
