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
#             :     @file        :  06_fileHandling.sh                                  #
#             :     @folder      :  ~/.config/zshrc/                                    #
#             :     @brief       :  aliases for handling files                          #
#             :     @requires    :  zshShell, fzf, bat, file archiver/s which supports  #
#                                       the file types/s in the function "extract"      #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

alias whatsize="du -d 1 -h"            ## Display the size of files in current location
alias t="tail -f"                      ## Outputs the last part of a file
alias find_file="find . -type f -name" ## Find a file with the given name

## Find a file & open it with neovim
alias ff='nvim $(fzf)'
# alias fz='fzf --files --hidden --preview "bat {}" --follow --ignore-vcs -g "!{node_modules,.git}" | fzf'
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

alias cat="bat"

alias list_zip="unzip -l"
alias list_rar="unrar l"
alias list_tar="tar tf"
alias list_tardotgz="echo"
alias list_ace="unace l"

## Extracts whatever you feed it
extract() {
    if [ -z ${1} ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        echo "Usage: extract <archive> [directory]"
        echo "Example: extract presentation.zip."
    else
        case "$1" in
        *.tar.bz2 | *.tbz2 | *.tbz) tar xvjf "$1" ;;
        *.tgz) tar zvxf "$1" ;;
        *.tar.gz) tar xvzf "$1" ;;
        *.tar.xz) tar xvJf "$1" ;;
        *.cbt | *.tar) tar xvf "$1" ;;
        *.cbr | *.rar) unrar x -ad "$1" ;;
        *.cbz | *.epub | *.zip | *.vsix) unzip "$1" ;;
        *.lzo) lzop -d "$1" ;;
        *.gz) gunzip "$1" ;;
        *.bz2) bunzip2 "$1" ;;
        *.Z) uncompress "$1" ;;
        *.xz | *.txz | *.lzma | *.tlz) xz -d "$1" ;;
        *.exe) cabextract ./"$1" ;;
        *.cpio) cpio -id <./"$1" ;;
        *.cba | *.ace) unace x ./"$1" ;;
        *.7z | *.arj | *.cab | *.cb7 | *.chm | *.deb | *.dmg | *.iso | *.lzh | *.msi | *.pkg | *.rpm | *.udf | *.wim | *.xar)
            7z x "$1"
            ;;
        *) echo "Faild extracting, '$1' - unknown archive method" ;;
        esac
    fi
}
