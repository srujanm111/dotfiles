#!/usr/bin/env zsh

echo "Cleaning..."

# get directory script is located in
DIR="$(cd "$(dirname "$0")" && pwd)"

# SYMLINKS

# zsh
rm "${ZDOTDIR:-$HOME}"/.zlogin
rm "${ZDOTDIR:-$HOME}"/.zlogout
rm "${ZDOTDIR:-$HOME}"/.zpreztorc
rm "${ZDOTDIR:-$HOME}"/.zprofile
rm "${ZDOTDIR:-$HOME}"/.zshenv
rm "${ZDOTDIR:-$HOME}"/.zshrc
rm "${ZDOTDIR:-$HOME}"/.p10k.zsh

# vim
rm "$HOME"/.vimrc
rm "$HOME"/.vim/colors/mytheme.vim

# git
rm "$HOME"/.gitconfig
rm "$HOME"/.gitignore_global

echo "Removed symlinks"
