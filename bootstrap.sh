#!/usr/bin/env zsh

echo "Bootstrapping..."

# get directory script is located in
DIR="$(cd "$(dirname "$0")" && pwd)"

# function to prompt user if a file needs to be overwritten by a symlink
symlink () {
  SRC_FILE="$1"
  SYMLINK_FILE="$2"

  # if the symlink file location already contains a file or symlink
  if [[ -f "$SYMLINK_FILE" ]] || [[ -h "$SYMLINK_FILE" ]]; then
    # if the file is a symlink that already points to the right source file, return
    if [[ -L "$SYMLINK_FILE" ]] && [[ "$(readlink "$SYMLINK_FILE")" == "$SRC_FILE" ]]; then
      return;
    fi

    # prompt the user
    while true
    do
      read "ANS?$SYMLINK_FILE already exists. Overwrite it? (y/n): "
      case "$ANS" in
        [yY]*) rm -f "$SYMLINK_FILE"; break;;
        [nN]*) return;;
        *) echo "Please enter y/n"
      esac
    done

  fi

  # make the symlink
  ln -s "$SRC_FILE" "$SYMLINK_FILE"
}

# SYMLINKS

# zsh
symlink "$DIR"/zsh/zlogin "${ZDOTDIR:-$HOME}"/.zlogin
symlink "$DIR"/zsh/zlogout "${ZDOTDIR:-$HOME}"/.zlogout
symlink "$DIR"/zsh/zpreztorc "${ZDOTDIR:-$HOME}"/.zpreztorc
symlink "$DIR"/zsh/zprofile "${ZDOTDIR:-$HOME}"/.zprofile
symlink "$DIR"/zsh/zshenv "${ZDOTDIR:-$HOME}"/.zshenv
symlink "$DIR"/zsh/zshrc "${ZDOTDIR:-$HOME}"/.zshrc
symlink "$DIR"/zsh/p10k.zsh "${ZDOTDIR:-$HOME}"/.p10k.zsh

# vim
mkdir -p ~/.vim/colors
symlink "$DIR"/vim/vimrc "$HOME"/.vimrc
symlink "$DIR"/vim/mytheme.vim "$HOME"/.vim/colors/mytheme.vim

# git
symlink "$DIR"/git/gitconfig "$HOME"/.gitconfig
symlink "$DIR"/git/gitignore_global "$HOME"/.gitignore_global
