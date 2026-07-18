alias please="sudo !!"
alias nf="fastfetch"
alias :q="exit"
alias q="exit"
alias x="exit"
alias c="clear"
alias tree="tree -a"
alias rmlint="rmlint -g ."

alias poweroff="sudo poweroff"
alias reboot="sudo reboot"

# Downgrade
alias downgrade="sudo downgrade"

# alias grep='grep --color=auto'
alias grep="rg --color=auto"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias fs-usage="df -h" # human-readable sizes

# determine the file system type
fs-type() {
  df -Th | grep '^/dev'
}

alias free-mem="free -h"
alias rm="trash-put "
# alias rm="gtrash put"
alias tr="gtrash restore"
alias ts="gtrash summary"
alias tf="gtrash find"
alias icat="kitty +kitten icat" ## view image with lolo caty

# enable color support of ls and also add handy aliases
# if [ -x /usr/bin/dircolors ]; then
#   test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#   alias ls='ls --color=auto'
#   alias lss='ls --color=auto'
#   alias dir='dir --color=auto'
#   alias vdir='vdir --color=auto'
#   alias grep='grep --color=auto'
#   alias fgrep='fgrep --color=auto'
#   alias egrep='egrep --color=auto'
#   alias diff='diff --color=auto'
# fi
