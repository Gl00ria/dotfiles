alias sync="sudo pacman -Syy"       # Refresh all pkgs lists after updating the mirrorlist
alias pacupgrade="sudo pacman -Syu" # Upgrade

## Arch's nuclear
alias upgrade-all="sudo pacman -Syy && sudo pacman -Syu && yay -Sua --noconfirm"

## Install
alias pacinstall="sudo pacman -S"               # Install pkgs from the repo using "PACMAN"
alias paclocal-install="sudo pacman -U"         # Install pkgs from a local file using "PACMAN"
alias pacinstall-deps="sudo pacman -S --asdeps" # Install pkgs as dependencies of another pkg using "PACMAN"

## Info
alias pac-list-installed="pacman -Qqen > pacman_pkglist.txt" # List installed pkgs "Pacman"
alias aur-list-installed="pacman -Qqem > aur_pkgList.txt"    # List installed pkgs "AUR"
alias pacpkg-info="sudo pacman -Qi"                          # Query installed pkgs and their files
alias pacpkg-list="sudo pacman -Ql"                          # List files in a pkg

#Recent Installed pkgs
alias recent-installed-packages="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias recent-installed-packages-long="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# list packages you've explicity installed except for "base & base-devel"
pacpkg-list-exept-base-base-devel() {
	pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }'
}
alias pacsearch-local="sudo pacman -Qs" # Search installed pkgs

## Search & install pkgs in pacman's repo & mark the installed pkgs with *
pacsearch() {
	pacman -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --ansi --preview 'pacman -Si {1}' --reverse | xargs -ro sudo pacman -S
}

alias pkgtree="pactree" # Find out the dependencies for a pkg

## Clean Up
alias clr-cache="sudo pacman -Sc --noconfirm && yay -Sc --noconfirm"                                             # Clear old & unused chaches & pkgs
alias clr-allchace="sudo pacman -Scc --noconfirm && yay -Scc --noconfirm"                                        # Clear all files from the cache
alias pacremove="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -R"                 # Remove a pkg, keeps its settings & dependencies
alias pacremove-with-settings="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns" # Remove a pkg, including its settings & dependencies
# Remove unneeded pkgs
pacuseless() {
	sudo pacman -Rsn "$(pacman -Qdtq)"
}

alias unlock="sudo rm /var/lib/pacman/db.lck" # Remove pacman lock

## get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"

alias pac-fix-keyserver="[ -d ~/.gnupg ] || mkdir ~/.gnupg ; cp /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/ ; echo 'done'"
