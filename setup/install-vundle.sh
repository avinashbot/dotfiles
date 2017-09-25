#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Checks if Neovim is installed and installs it if not.
if [ ! type "nvim" > /dev/null ]; then
  echo "[install] neovim already installed :)"
elif [ ! type "apt-get" > /dev/null ]; then
  sudo apt-get -y install neovim
elif [ ! type "dnf" > /dev/null ]; then
  sudo dnf install -y neovim
fi

# Installs Vundle.

echo "[install] downloading vundle..."
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "[install] installing vim/neovim plugins..."
nvim +PluginInstall +qall

