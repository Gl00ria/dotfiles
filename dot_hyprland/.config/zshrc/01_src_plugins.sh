source "$HOME"/.config/zshrc/plugins/safe-paste/safe-paste.plugin.zsh # prevent code from running while pasting
source "$HOME"/.config/zshrc/plugins/urltools/urltools.plugin.zsh     # urlencode/urlencode 'given string'
# (n-aliases| n-cd| n-functions| n-history| n-kill| n-env| n-options| n-panelize)
source "$HOME"/.config/zshrc/plugins/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
# ( fast-theme -t {theme-name} | fast-theme -l )
source "/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$HOME"/.config/zshrc/plugins/zsh-auto-notify/auto-notify.plugin.zsh # Sends a notification whan a long running task has completed
source "/usr/share/zsh/plugins/forgit/forgit.plugin.zsh"                      # install from AUR
source "$HOME"/.config/zshrc/plugins/mysql-colorize/mysql-colorize.plugin.zsh # colorize Mysql
source "$HOME"/.config/oh-my-zsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh

source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=1,bold,underline"
# bindkey '^ ' autosuggest-accept # autosuggest-execute

# PERF: zsh-autopair won't work with zsh-vi-mode
# source "/usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh" # install from AUR
# ZVM_VI_INSERT_ESCAPE_BINDKEY="jk"
# source "/usr/share/zsh/plugins/zsh-autopair/autopair.zsh"
