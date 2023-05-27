#!/usr/bin/env zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

# zsh-zutosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZDOTDIR:-$HOME}"/ohmyzsh/custom/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZDOTDIR:-$HOME}"/ohmyzsh/custom/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZDOTDIR:-$HOME}"/ohmyzsh/custom/themes/powerlevel10k

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim plugins
vim +PlugInstall +qall

