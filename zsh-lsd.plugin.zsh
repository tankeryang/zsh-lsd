#!/usr/bin/env zsh

# Exit if the 'lsd' command could not be found
if ! (( $+commands[lsd] )); then
    echo "WARNING: 'lsd' command not found"
    return
fi

ness_params="--group-directories-first --header --hyperlink=auto --date='+%a %Y-%m-%d %H:%M:%S '"
# Create alias override commands using 'lsd'
alias k="lsd -lah $ness_params"
alias ks="lsd $ness_params"
alias kl="lsd -l $ness_params"
alias ka="lsd -la $ness_params"
alias kt="lsd -lat $ness_params"
alias kx="lsd -laX $ness_params"
alias ktree="lsd -l --tree --depth=2 $ness_params"
