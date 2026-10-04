export TERM="xterm-256color" # getting proper colors

# https://stackoverflow.com/questions/29196718/zsh-highlight-on-tab
# zstyle ':completion:*' menu select

# https://unix.stackexchange.com/questions/185537/combining-zsh-s-tab-completion-with-case-insensitivity
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# (https://stackoverflow.com/questions/62931101/i-have-multiple-files-of-zcompdump-why-do-i-have-multiple-files-of-these)
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# setup zsh history
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt EXTENDED_HISTORY
export HIST_STAMPS="dd-mm-yyyy"
setopt HIST_IGNORE_SPACE # ignore alias, how it works? will igonre any command starts with a space
export HIST_IGNORE="cd|ls|clear|clea|exit|history|"
setopt HIST_IGNORE_ALL_DUPS # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS    # do not save duplicated command
setopt HIST_REDUCE_BLANKS   # remove unnecessary blanks
# setopt INC_APPEND_HISTORY_TIME # append command to history file immediately after execution
