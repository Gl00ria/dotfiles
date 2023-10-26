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
#             :     @file        :  03_yay.sh                                           #
#             :     @folder      :  ~/.config/zshrc/                                    #
#             :     @brief       :  aliases for the pkg manager "YAY"                   #
#             :     @requires    :  zshShell, yay                                       #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

alias yayconfig="yay -Pg"                          ## Print current config

alias yayupgrade="yay -Sua"                        ## Update only AUR pkgs

## Install
alias yayinstall="yay -S"                          ## Install pkgs from the repo using "YAY"
alias yaylocal_install="yay -U"                    ## Install pkgs from a local file usnig "YAY"
alias yayinstall_deps="yay -S --asdeps"            ## Install pkgs as dependencies of another pkg using "YAY"

## Info
alias yaypkg_info="yay -Qi"                        ## Query installed pkgs and their files
alias yaypkg_list="yay -Ql"                        ## List files in a pkg
alias yaysearch_localdb="yay -Qs"
alias yaylist_installed_pkgs_local="yay -Qe"
alias yaydisplay-info-repo="yay -Si"               ## Display info about a pkg in the repo

## Using FZF to search YAY
yaysearch(){
  yay -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --ansi --preview 'yay -Si {1}' --reverse | xargs -ro yay -S
}

## Clean Up
alias yayremove="yay -Qq | fzf --multi --preview 'yay -Qi {1}' | xargs -ro yay -R"                 ## Remove a pkg, keeps its settings & dependencies
alias yayremove_with_settings="yay -Qq | fzf --multi --preview 'yay -Qi {1}' | xargs -ro yay -Rns" ## Remove a pkg, including its settings & dependencies
