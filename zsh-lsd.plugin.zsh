#!/usr/bin/env zsh

# Exit if the 'lsd' command could not be found
if ! (( $+commands[lsd] )); then
    echo "WARNING: 'lsd' command not found"
    return
fi

ness_params="--group-directories-first --header --hyperlink=auto --date='+%a %Y-%m-%d %H:%M:%S'"
# Create alias override commands using 'lsd'
alias l="lsd -lah $ness_params"
alias ls="lsd $ness_params"
alias ll="lsd -l $ness_params"
alias la="lsd -la $ness_params"
alias lt="lsd -lat $ness_params"
alias lx="lsd -laX $ness_params"
alias tree="lsd -l --tree --depth=2 $ness_params"
