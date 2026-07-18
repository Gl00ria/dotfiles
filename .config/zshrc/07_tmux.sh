alias t="tmux"
# alias tns="tmux new -s" # new session
alias tns="tmux new -A -s" # create or attach to a named tmux session
alias tes="tmux detach"
alias tls="tmux ls"
alias tas="tmux attach -t"
alias tad="tmux attach -d -t" # deattach
alias tks="tmux kill-session -t"
alias tkss="tmux kill-server"

#
# https://herdr.dev/docs/cli-reference/
#
# alias t="herdr"
# alias tns="herdr --session" # create or attach to a named session
# alias tes="herdr session stop"
# alias tls="herdr session list"
# alias tas="herdr session attach"
# alias tad="herdr session stop" # deattach
# alias tks="herdr session delete"
# alias tkss="herdr server stop"
