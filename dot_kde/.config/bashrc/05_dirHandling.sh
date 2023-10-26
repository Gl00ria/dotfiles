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
#             :     @file        :  05_dirHandling.sh                                   #
#             :     @folder      :  ~/.config/bash/                                     #
#             :     @brief       :  aliases for handling directories                    #
#             :     @requires    :  bashShell, lsd                                      #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias find-dir="find . -type d -name"                 ## Find a dir with the given name
alias last-dir="dirs -v"                              ## lists last visited directories

mcd() { [[ "$1" ]] && mkdir -p "$1" && cd "$1"; }     ## make new dir and cd's that dir

alias ls="lsd -l"
alias la="lsd -a"
alias lsdots="lsd -ld .*"
alias lsneat="lsd -1a"

## ls when changing directory
cd() {
    builtin cd "$@" && ls -l
}
