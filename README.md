# .dotfiles

### Contents

- a .vimrc
- well-organized .bashrc, .bash_aliases, .bash_exports, and .bash_prompt
- git defaults (with my name in them)
- an installation script for commonly used languages

### Install Separately

[rbenv](https://github.com/rbenv/rbenv),
[n](https://github.com/tj/n),
[golang](https://golang.org/doc/install#install),
[neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim),
[rustup](https://www.rustup.rs/),
[stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)

[code](https://code.visualstudio.com/) (one-monokai, markdown-preview-github-styles, vscode-todo-highlight)

### Installation

*[source](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo)*

```sh
git clone --bare https://github.com/avinashbot/dotfiles $HOME/.cfg
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
cfg checkout
source $HOME/.bashrc
```

### Customization

```sh
cfg commit -am "made some changes"
cfg push
```

