alias yayconfig="yay -Pg" ## Print current config

alias yayupgrade="yay -Sua" ## Update only AUR pkgs

## Install
alias yayinstall="yay -S"               ## Install pkgs from the repo using "YAY"
alias yaylocal-install="yay -U"         ## Install pkgs from a local file usnig "YAY"
alias yayinstall-deps="yay -S --asdeps" ## Install pkgs as dependencies of another pkg using "YAY"

## Info
alias yaypkg-info="yay -Qi" ## Query installed pkgs and their files
alias yaypkg-list="yay -Ql" ## List files in a pkg
alias yaysearch-localdb="yay -Qs"
alias yaylist-installed-pkgs-local="yay -Qe"
alias yaydisplay-info-repo="yay -Si" ## Display info about a pkg in the repo

## Using FZF to search YAY
yaysearch() {
	yay -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --ansi --preview 'yay -Si {1}' --reverse | xargs -ro yay -S
}

## Clean Up
alias yayremove="yay -Qq | fzf --multi --preview 'yay -Qi {1}' | xargs -ro yay -R"                 ## Remove a pkg, keeps its settings & dependencies
alias yayremove-with-settings="yay -Qq | fzf --multi --preview 'yay -Qi {1}' | xargs -ro yay -Rns" ## Remove a pkg, including its settings & dependencies
