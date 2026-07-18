alias v="nvim"
alias nv="neovide"
alias nq="nvim-qt --fullscreen"
# alias nq="nvim-qt --maximized"
alias svim="sudo vim"
#
# this would allow you to select & launch specific 'nvim' config using 'FZF'
#
# shellcheck disable=SC2155,SC2068,SC2086
#
# open with neovim (terminal)
#
vt() {
  # assumes all configs exist in directories named ~/.config/nvim*
  local config=$(fd --max-depth 1 --glob 'nvim*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)

  # if I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return

  # open Neovim with the selected config
  NVIM_APPNAME=$(basename $config) nvim $@
}

#
# open with neovide (GUI)
#
vg() {
  # assumes all configs exist in directories named ~/.config/nvim*
  local config=$(fd --max-depth 1 --glob 'nvim*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)

  # if I exit fzf without selecting a config, don't open Neovide
  [[ -z $config ]] && echo "No config selected" && return

  # open Neovide with the selected config
  NVIM_APPNAME=$(basename $config) neovide $@
}
