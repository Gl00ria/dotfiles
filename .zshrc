# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------ Source the configuration files --------------------

for cfgs in "$HOME"/.config/zshrc/*; do
  source "$cfgs"
done

# i dont' work putting it @.config/zshrc
autoload -U compinit
compinit
source "/home/$USER/.config/zshrc/plugins/fzf-tab/fzf-tab.plugin.zsh"

source ~/powerlevel10k/powerlevel10k.zsh-theme
