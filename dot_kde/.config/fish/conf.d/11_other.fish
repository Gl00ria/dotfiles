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
#             :     @file        :  11_other.fish                                       #
#             :     @folder      :  ~/.config/fish/conf.d                               #
#             :     @brief       :  arbitrary aliases                                   #
#             :     @requires    :  fishShell, neovim, vim, neofetch, rg,kitty,trash-cli#
#             :     @optional    :  (1) wal, (2) hangman, (3) fun forgot                #
#             :     @Note        :  create that SexyCommands.txt in your $HOME          #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

alias nv="nvim"
alias svim="sudo vim"
alias nf="neofetch"
alias :q="exit"
alias q="exit"
alias x="exit"
alias k="clear"
alias cls="clear"
alias tree="tree -a"

alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias rm="trash-put"

## Downgrade
alias downgrade="sudo downgrade"

## alias grep="grep --color=auto"
alias grep="rg --color=auto"

alias fs-usage="df -h"                                ## human-readable sizes
# determine the file system type
function fs-type
  df -Th | grep '^/dev'
end
alias free-mem="free -h"

alias wal="wal -i ~/Pictures/SlideShow"               ## Change terminal's colorscheme based on the current wallpaper
alias game="cd ~/Downloads/hangman && go run main.go" ## Let your brain blowup
alias icat="kitty +kitten icat"                       ## view image with lolo caty

## Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Don't forget commands anymore
function forgot
  cat ~/SexyCommands.norg
end

## get the current weather based in ur current location
function weather
  curl "https://wttr.in/$1"
end
