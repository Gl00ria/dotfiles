if [ "$(echo "$PATH" | grep -c /usr/local/sbin)" -ne "1" ]; then
  PATH="$PATH:/usr/local/bin:/usr/local/sbin"
fi
if [ "$(echo "$PATH" | grep -c "$HOME"/bin)" -ne "1" ]; then
  PATH="$PATH:$HOME/bin"
fi
if [ "$(echo "$PATH" | grep -c "$HOME"/.local/bin)" -ne "1" ]; then
  PATH="$PATH:$HOME/.local/bin"
fi
export PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi
export VISUAL=vim
export EDITOR=${VISUAL}

# "bat" as manpager
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# "vim" as manpager
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# "nvim" as manpager
export MANPAGER="nvim +Man!"

# "less" as manpager
# export MANPAGER="less"
