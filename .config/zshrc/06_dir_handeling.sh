alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# make new dir and cd into that dir
mcd() { [[ "$1" ]] && mkdir -p "$1" && cd "$1"; }

# alias ls="lsd -l"
# alias la="lsd -la"
# alias lst="lsd -l --tree"
# alias lat="lsd -la --tree"
# alias lsneat="lsd -1a"

alias ls='eza -a --icons=always --color=always --group-directories-first'  # all files and dirs
alias la='eza -al --icons=always --color=always --group-directories-first' # my preferred listing
alias ll='eza -l --icons=always --color=always --group-directories-first'  # long format
alias lt='eza -aT --icons=always --color=always --group-directories-first' # tree listing

# ls when changing directory
# cd() {
#   builtin cd "$@" && ls -l
# }
