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
#             :     @file        :  02_pacman.fish                                      #
#             :     @folder      :  ~/.config/fish/conf.d/                              #
#             :     @brief       :  aliases for the pkg manager "PACMAN"                #
#             :     @requires    :  zshShell, pacman, fzf, expac                        #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

alias sync="sudo pacman -Syy" # Refresh all pkgs lists after updating the mirrorlist
alias pacupgrade="sudo pacman -Syu" # Upgrade

## Arch's nuclear
alias upgrade_all="sudo pacman -Syy && sudo pacman -Syu && yay -Sua --noconfirm"

## Install
alias pacinstall="sudo pacman -S" # Install pkgs from the repo using "PACMAN"
alias paclocal_install="sudo pacman -U" # Install pkgs from a local file using "PACMAN"
alias pacinstall_deps="sudo pacman -S --asdeps" # Install pkgs as dependencies of another pkg using "PACMAN"

## Info
alias pac_list_installed="pacman -Qqen > pacman_pkglist.txt" # List installed pkgs "Pacman"
alias aur_list_installed="pacman -Qqem > aur_pkgList.txt" # List installed pkgs "AUR"
alias pacpkg_info="sudo pacman -Qi" # Query installed pkgs and their files
alias pacsearch_local="sudo pacman -Qs" # Search installed pkgs

#Recent Installed pkgs
alias recent_installed_packages="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias recent_installed_packages_long="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# list packages you've explicity installed except for "base & base-devel"
pacpkg_list_exept_base_base_devel(){
    pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }'
}

## Search & install pkgs in pacman's repo & mark the installed pkgs with *
function pacsearch
    pacman -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --ansi --preview 'pacman -Si {1}' --reverse | xargs -ro sudo pacman -S
end

alias pkgtree="pactree" # Find out the dependencies for a pkg

## Clean Up
alias clr_cache="sudo pacman -Sc --noconfirm && yay -Sc --noconfirm" # Clear old & unused chaches & pkgs
alias clr_allchace="sudo pacman -Scc --noconfirm && yay -Scc --noconfirm" # Clear all files from the cache
alias pacremove="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -R" # Remove a pkg, keeps its settings & dependencies
alias pacremove_with_settings="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns" # Remove a pkg, including its settings & dependencies

# Remove unneeded pkgs
pacuseless(){
    sudo pacman -Rsn $(pacman -Qdtq)
}

alias unlock="sudo rm /var/lib/pacman/db.lck" # Remove pacman lock

## get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"

alias pac_fix_keyserver="[ -d ~/.gnupg ] || mkdir ~/.gnupg ; cp /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/ ; echo 'done'"
