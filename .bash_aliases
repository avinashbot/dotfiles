# ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# because i can't type
alias clera='clear'
alias celar='clear'
alias claer='clear'
alias clrea='clear'
alias cealr='clear'
alias cearl='clear'

# add color to grep
alias grep='grep --color=auto'

# lets you rm a file safely
alias ts='gio trash'

# ehh whatever, i give up
(type nvim > /dev/null 2>&1) && alias vim='nvim'

# lets you update configs
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
