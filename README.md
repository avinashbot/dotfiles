# .dotfiles

### Contents

- a .vimrc
- well-organized .bashrc, .bash_aliases, .bash_exports, and .bash_prompt
- git defaults (with my name in them)
- an installation script for commonly used languages

### Installation

```sh
git clone --bare https://github.com/avinashbot/dotfiles $HOME/.cfg
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg checkout
source $HOME/.bashrc

# optionally
install-on-new-machine.sh
```

### Customization

```sh
cfg commit -am "made some changes"
cfg push
```

