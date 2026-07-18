# this will enable fzf keybinds:
# CTR + t  --> look for files dirs
# CTR + r  --> search command history
# export **
# cd **
# ssh **
# unset **
# unalias **
# kill -9 **
# typeAnyThing **
if command -v fzf >/dev/null; then
  eval "$(fzf --zsh)"
fi


alias cat="bat"
export BAT_THEME=tokyonight_night

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# use fd instead of fzf
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix"

# theme (https://vitormv.github.io/fzf-themes/)
fg="#CBE0F0"
bg="#24283b"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan} --info='right' --border='rounded' --border-label='' --preview-window='border-bold' --prompt=' ' --marker='󰄸 ' --pointer='󰔰 ' --separator='─' --scrollbar='│'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}

# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden . "$1"
  # fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden . "$1"
  # fd --type=d --hidden --exclude .git . "$1"
}

# alias fz='fzf --files --hidden --preview "bat {}" --follow --ignore-vcs -g "!{node_modules,.git}" | fzf'

alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# Find a file & open it with neovim
alias ff='nvim $(fzf)'

# 'f rm' to remove selected file
f() {
    sels=( "${(@f)$(fd "${fd_default[@]}" "${@:2}"| fzf)}" )
    test -n "$sels" && print -z -- "$1 ${sels[@]:q:q}"
}

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --preview-window right:20%| sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}
# fh() {
#   print -z $( ([ -n "$ZSH_NAME" ] && fc -R ~/.zsh_history && fc -l 1 || cat ~/.zsh_history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
# }

# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m --preview-window right:20%| awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# man pages
fman() {
  batman="man {1} | col -bx | bat --language=man --plain --color always --theme=\"Monokai Extended\""
   man -k . | sort \
   | awk -v cyan=$(tput setaf 6) -v blue=$(tput setaf 4) -v res=$(tput sgr0) -v bld=$(tput bold) '{ $1=cyan bld $1; $2=res blue;} 1' \
   | fzf  \
      -q "$1" \
      --ansi \
      --tiebreak=begin \
      --prompt=' Man > '  \
      --preview-window '50%,rounded,<50(up,85%,border-bottom)' \
      --preview "${batman}" \
      --bind "enter:execute(man {1})" \
      --bind "alt-c:+change-preview(cht.sh {1})+change-prompt(ﯽ Cheat > )" \
      --bind "alt-m:+change-preview(${batman})+change-prompt( Man > )" \
      --bind "alt-t:+change-preview(tldr --color=always {1})+change-prompt(ﳁ TLDR > )"
  zle reset-prompt
}
