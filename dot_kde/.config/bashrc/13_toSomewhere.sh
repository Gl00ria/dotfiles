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
#                                                                                       #
#             :   Configured by  :  Gl00ria @gl00ria                                    #
#             :     GitHub       :  https://github.com/gl00ria                          #
#                                                                                       #
#             :     @file        :  13_toSomewhere.sh                                   #
#             :     @folder      :  ~/.config/bash/                                     #
#             :     @brief       :  aliases to jump to config folders, web-page &&      #
#                                            change current shell                       #
#             :     @requires    :  bashShell, zshShell, fishShell, xdg-utils,          #
#                                        zsh-web_search plugin                          #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

## To configs
alias bashconfig="cd $HOME/.config/bashrc"
alias zshconfig="cd $HOME/.config/zshrc"
alias zhsconfig="cd $HOME/.config/zshrc"
alias fishconfig="cd $HOME/.config/fish"
alias starshipconfig="cd $HOME/.config/starship"
alias nvconfig="cd $HOME/.config/nvim"

## Changing shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

## To the INETRNET
alias web_search="xdg-open" # search the link provided by the user
alias web_search_archwiki="xdg-open https://wiki.archlinux.org/&"
