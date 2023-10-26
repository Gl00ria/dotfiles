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
#             :     @folder      :  ~/.config/zshrc/                                    #
#             :     @brief       :  aliases to jump to config folders, web-page &&      #
#                                            change current shell                       #
#             :     @requires    :  zshShell, bashShell, fishShell, xdg-utils,          #
#                                        zsh-web_search plugin                          #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

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

## To the INTERNET
alias web_search="xdg-open" # search the link provided by the user
alias web_search_archwiki="xdg-open https://wiki.archlinux.org/&"
alias web_search_bing="web_search bing"
alias web_search_baidu="web_search baidu"
alias web_search_scholar="web_search scholar"
alias web_search_stackOverFlow="web_search stackoverflow"
alias web_search_wolframa="web_search wolframalpha"
alias web_search_goodReads="web_search goodreads"
alias web_search_google="web_search google"
alias web_search_yahoo="web_search yahoo"
alias web_search_duckDuckGo="web_search duckduckgo"
alias web_search_gitHub="web_search github"
alias web_search_youTube="web_search youtube"
alias web_search_yandex="web_search yandex"
alias web_search_startPage="web_search startpage"
alias web_search_ecosia="web_search ecosia"
alias web_search_qwant="web_search qwant"
alias web_search_wiki="web_search duckduckgo \!w"
alias web_search_news="web_search duckduckgo \!n"
alias web_search_map="web_search duckduckgo \!m"
alias web_search_image="web_search duckduckgo \!i"
alias web_search_ducky="web_search duckduckgo \!"
