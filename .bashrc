# ~/.bashrc: executed by bash(1) for non-login shells.

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# defer to bash dotfiles for the real fun stuff
for file in ~/.{bash_prompt,bash_exports,bash_aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Save multi-line commands as one command
shopt -s cmdhist
# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell
# Autocorrect on directory names to match a glob.
shopt -s dirspell
# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar

# Sync history over multiple term windows.
export HISTCONTROL="erasedups:ignoreboth"
export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

