# (1)
## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
## Initialization code that may require console input (password prompts, [y/n]
## confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# (2)
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"
source "$ZSH"/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##  Display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

## The command execution time
# HIST_STAMPS="mm-dd-yyyy"

# (3)
## Starship, Cross-shell prompt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

## PATH
# if [ -d "$HOME/.bin" ]; then
# 	PATH="$HOME/.bin:$PATH"
# fi

# if [ -d "$HOME/.local/bin" ]; then
# 	PATH="$HOME/.local/bin:$PATH"
# fi

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

## Rofi
export PATH=$HOME/.config/rofi/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nvim'
else
	export EDITOR='vim'
fi
export VISUAL=vim
export EDITOR=${VISUAL}

## The man database
export MANPATH="/usr/local/man:$MANPATH"

## "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## "vim" as manpager
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

## "nvim" as manpager
# export MANPAGER="nvim -c 'set ft=man' -"

## source the plugins since i use starship
# plugins=(git safe-paste urltools zsh-navigation-tools zsh-interactive-cd zsh-syntax-highlighting zsh-completions)

# firefox as default BROWSER
export BROWSER=firefox
