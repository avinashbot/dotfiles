#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Install Vundle (for Vim or NeoVim, NeoVim is optional)

echo "[install] Downloading Vundle..."
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "[install] Install Vim Plugins..."
vim +PluginInstall +qall

