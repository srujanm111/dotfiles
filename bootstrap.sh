#!/usr/bin/env zsh

# get directory script is located in
DIR="$(cd "$(dirname "$0")" && pwd)"

# zsh
ln -s $DIR/zsh/zlogin "${ZDOTDIR:-$HOME}"/.zlogin
ln -s $DIR/zsh/zlogout "${ZDOTDIR:-$HOME}"/.zlogout
ln -s $DIR/zsh/zpreztorc "${ZDOTDIR:-$HOME}"/.zpreztorc
ln -s $DIR/zsh/zprofile "${ZDOTDIR:-$HOME}"/.zprofile
ln -s $DIR/zsh/zshenv "${ZDOTDIR:-$HOME}"/.zshenv
ln -s $DIR/zsh/zshrc "${ZDOTDIR:-$HOME}"/.zshrc
ln -s $DIR/zsh/p10k.zsh "${ZDOTDIR:-$HOME}"/.p10k.zsh

# vim
ln -s $DIR/vim/vimrc $HOME/.vimrc
ln -s $DIR/vim/mytheme.vim $HOME/.vim/colors/mytheme.vim