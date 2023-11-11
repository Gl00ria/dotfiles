alias find-dir="find . -type d -name" ## Find a dir with the given name
alias last-dir="dirs -v" ## lists last visited directories

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ls="lsd -l"
alias la="lsd -a"
alias lsdots="lsd -ld .*"
alias lsneat="lsd -1a"

## make new dir and cd's that dir
function mcd
    "$argv" && mkdir -p "$argv" && cd "$argv"
end

## ls when changing directory
function cd
    builtin cd "$argv" && ls -l
end
