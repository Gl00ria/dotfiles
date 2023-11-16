alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias find-dir="find . -type d -name" ## Find a dir with the given name
alias last-dir="dirs -v"              ## lists last visited directories

mcd() { [[ "$1" ]] && mkdir -p "$1" && cd "$1"; } ## make new dir and cd's that dir

alias ls="lsd -l"
alias la="lsd -la"
alias lsdots="lsd -ld .*"
alias lsneat="lsd -1a"

## ls when changing directory
cd() {
  builtin cd "$@" && ls -l
}
