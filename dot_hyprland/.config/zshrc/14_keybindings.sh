# bindkey -s '^e' '${EDITOR} $(fzf)\n'   ## NOTE:1) find a file & open it with neovim
# bindkey -s '^f' 'n-cd\n'               ## find a dir & cd into it
# bindkey -s '^h' 'n-history\n'          ## search command history
# bindkey -s '^n' 'n-env\n'              ## search vars in the current dir
# bindkey -s '^p' 'n-kill\n'             ## search current runing processes
bindkey '^[l' 'autosuggest-accept'
