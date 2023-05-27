#!/usr/bin/env zsh

# get directory script is located in
DIR="$(cd "$(dirname "$0")" && pwd)"

# give execution permission
chmod +x $DIR/install.sh
chmod +x $DIR/bootstrap.sh

# run scripts
$DIR/bootstrap.sh
$DIR/install.sh

# run shell
exec zsh -l
