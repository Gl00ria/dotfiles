#_______________________________________________________________________________________#
#                                                                                       #
#              ██████╗ ██╗      ██████╗  ██████╗ ██████╗ ██╗ █████╗                     #
#             ██╔════╝ ██║     ██╔═████╗██╔═████╗██╔══██╗██║██╔══██╗                    #
#             ██║  ███╗██║     ██║██╔██║██║██╔██║██████╔╝██║███████║                    #
#             ██║   ██║██║     ████╔╝██║████╔╝██║██╔══██╗██║██╔══██║                    #
#             ╚██████╔╝███████╗╚██████╔╝╚██████╔╝██║  ██║██║██║  ██║                    #
#              ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝                    #
#_______________________________________________________________________________________#
#                                                                                       #
#             :   Configured by  :  Gl00ria @gl00ria                                    #
#             :     GitHub       :  https://github.com/gl00ria                          #
#                                                                                       #
#             :     @file        :  01_src_plugins.sh                                   #
#             :     @folder      :  ~/.config/zshrc/                                    #
#             :     @brief       :  sourceing plugins                                   #
#             :     @requires    :  zshShell, plugin's file, (1) notify-send, (2) .env  #
#                                        (3) xdg-open, (4) git, (5) mysql               #
#             :     @optional    : (6) diff-so-fancy, (7) delta, (8) bat                #
#             :     @Note        :                                                      #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   16, Feb, 2023                                       #
#             :   Last Updated  :   16, Feb, 2023                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

source "$HOME"/.config/zshrc/plugins/safe-paste/safe-paste.plugin.zsh ## prevent code from running while pasting
source "$HOME"/.config/zshrc/plugins/urltools/urltools.plugin.zsh     ## urlencode/urlencode
source "$HOME"/.config/zshrc/plugins/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source "$HOME"/.config/zshrc/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOME/.config/zshrc/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "$HOME"/.config/zshrc/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source "$HOME"/.config/zshrc/plugins/zsh-auto-notify/auto-notify.plugin.zsh # (1) Sends a notification whan a long running task has completed
source "$HOME"/.config/zshrc/plugins/autodotenv/autoenv.plugin.zsh          # (2) wheather to load the project's ENV vars from ".env" once u "cd" into the project root dir
source "$HOME"/.config/zshrc/plugins/zsh-autopair/autopair.plugin.zsh       # autopair, '', "", [] ...etc
source "$HOME"/.config/zshrc/plugins/oh-my-matrix/oh-my-matrix.plugin.zsh
source "$HOME"/.config/zshrc/plugins/web-search/web_search.plugin.zsh         # (3)
source "$HOME"/.config/zshrc/plugins/forgit/forgit.plugin.zsh                 # (4) (6)
source "$HOME"/.config/zshrc/plugins/mysql-colorize/mysql-colorize.plugin.zsh # (5) colorize Mysql
source "$HOME"/.config/oh-my-zsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source "$HOME"/.config/zshrc/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# source $HOME/.config/zshrc/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
