# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
plugins=(

  copypath # copy absolute path
  copyfile

  conda-env
  bgnotify

  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dotenv
  # dotenv
  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
  # docker
  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose
  # docker-compose

  zsh-navigation-tools # --> keymaps @07_fzf.sh AS fh
  # n-aliases - browses aliases, relegates editing to vared
  # n-cd - browses dirstack and bookmarked directories, allows to enter selected directory
  # n-functions - browses functions, relegates editing to zed or vared
  # n-history - browses history, allows to edit and run commands from it
  # n-kill - browses processes list, allows to send signal to selected process
  # n-env - browses environment, relegates editing to vared
  # n-options - browses options, allows to toggle their state
  # n-panelize
  zsh-interactive-cd
)

# source "/usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh"
# ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# ZVM_KEYTIMEOUT=0.1 # default is (0.4)

if [[ ! -d $HOME/.config/zshrc/plugins/zsh-autopair ]]; then
  git clone https://github.com/hlissner/zsh-autopair $HOME/.config/zshrc/plugins/zsh-autopair
fi
source "$HOME/.config/zshrc/plugins/zsh-autopair/zsh-autopair.plugin.zsh"
autopair-init

# ( fast-theme -t {theme-name} | fast-theme -l )
source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=1,bold,underline"
# bindkey '^ ' autosuggest-accept # autosuggest-execute
bindkey '^[l' 'autosuggest-accept'

source "$ZSH"/oh-my-zsh.sh
