alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# make new dir and cd into that dir
mcd() { [[ "$1" ]] && mkdir -p "$1" && cd "$1"; }

# alias ls="lsd -l"
# alias la="lsd -la"
# alias lsdots="lsd -ld .*"
# alias lsneat="lsd -1a"

alias ls='eza -a --color=always --group-directories-first'  # all files and dirs
alias la='eza -al --color=always --group-directories-first' # my preferred listing
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing

# ls when changing directory
# cd() {
#   builtin cd "$@" && ls -l
# }
