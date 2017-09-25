# .dotfiles

### Contents

- a .vimrc
- well-organized .bashrc, .bash_aliases, .bash_exports, and .bash_prompt
- git defaults (with my name in them)
- an installation script for commonly used languages

### Installation

*[source](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo)*

```sh
git clone --bare https://github.com/avinashbot/dotfiles $HOME/.cfg
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
cfg checkout
source $HOME/.bashrc

# optionally
run-parts ~/.cfg-setup
```

### Customization

```sh
cfg commit -am "made some changes"
cfg push
```

