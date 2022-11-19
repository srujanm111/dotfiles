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
symlink "$DIR"/zsh/zprofile "${ZDOTDIR:-$HOME}"/.zprofile
symlink "$DIR"/zsh/zshenv "${ZDOTDIR:-$HOME}"/.zshenv
symlink "$DIR"/zsh/zshrc "${ZDOTDIR:-$HOME}"/.zshrc

# starship
mkdir -p "$HOME"/.config
symlink "$DIR"/config/starship.toml "$HOME"/.config/starship.toml

# vim
mkdir -p "$HOME"/.vim/colors
symlink "$DIR"/config/vimrc "$HOME"/.vimrc
symlink "$DIR"/config/mytheme.vim "$HOME"/.vim/colors/mytheme.vim

# git
symlink "$DIR"/config/gitconfig "$HOME"/.gitconfig
symlink "$DIR"/config/gitignore_global "$HOME"/.gitignore_global

# tmux
symlink "$DIR"/config/tmux.conf "$HOME"/.tmux.conf
