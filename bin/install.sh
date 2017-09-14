#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Install Vundle (for Vim or NeoVim, NeoVim is optional)

echo "[install] downloading vundle..."
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "[install] installing vim/neovim plugins..."
vim +PluginInstall +qall

# Setup Rbenv (for Ruby)

echo "[install] downloading rbenv..."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
(cd ~/.rbenv && src/configure && make -C src) || true

echo "[install] downloading ruby-build..."
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

echo "[install] installing ruby-2.4.0..."
rbenv install 2.4.0

# Setup n (for NodeJS)

echo "[install] installing n (using n-install)..."
curl -L https://git.io/n-install | bash -s -- -y

echo "[install] installing latest node..."
n latest

# Setup Rust (via rustup)

echo "[install] installing rustup..."
curl https://sh.rustup.rs -sSf | sh -s -- -y

# Install Go 1.9 (from tarball)

echo "[install] installing go 1.9..."
wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.9.linux-amd64.tar.gz
rm go1.9.linux-amd64.tar.gz

