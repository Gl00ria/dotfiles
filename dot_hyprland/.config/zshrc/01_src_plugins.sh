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
#             :     @requires    :  zshShell, plugin's file, (1) notify-send (4) git    #
#                                        (4) git, (5) mysql                             #
#             :     @optional    : (6) diff-so-fancy                                    #
#             :     @Note        :                                                      #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   16, Feb, 2022                                       #
#             :   Last Updated  :   27, Oct, 2023                                       #
# Update History : Updated plugins, more more comments                                  #
#_______________________________________________________________________________________#
#                                                                                       #

source "$HOME"/.config/zshrc/plugins/safe-paste/safe-paste.plugin.zsh # prevent code from running while pasting
source "$HOME"/.config/zshrc/plugins/urltools/urltools.plugin.zsh     # urlencode/urlencode 'given string'
# (n-aliases| n-cd| n-functions| n-history| n-kill| n-env| n-options| n-panelize)
source "$HOME"/.config/zshrc/plugins/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source "$HOME"/.config/zshrc/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source "$HOME"/.config/zshrc/plugins/zsh-auto-notify/auto-notify.plugin.zsh   # (1) Sends a notification whan a long running task has completed
source "$HOME"/.config/zshrc/plugins/zsh-autopair/autopair.plugin.zsh         # autopair, '', "", [] ...etc
source "$HOME"/.config/zshrc/plugins/forgit/forgit.plugin.zsh                 # (4) (6)
source "$HOME"/.config/zshrc/plugins/mysql-colorize/mysql-colorize.plugin.zsh # (5) colorize Mysql
source "$HOME"/.config/oh-my-zsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source "$HOME"/.config/zshrc/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
