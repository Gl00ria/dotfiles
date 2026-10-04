# ╒══════════════════════════════════════════════════════════╕
# │                                                          │
# │                      Update/Upgrade                      │
# │                                                          │
# ╘══════════════════════════════════════════════════════════╛
alias yconfig="yay -Pg" # Print current config

alias yupgrade="yay -Sua" # Update only AUR pkgs

# Install
alias yinstall="yay -S"               # Install pkgs from the repo using "YAY"
alias ylocal-install="yay -U"         # Install pkgs from a local file usnig "YAY"
alias yinstall-deps="yay -S --asdeps" # Install pkgs as dependencies of another pkg using "YAY"

# ╒══════════════════════════════════════════════════════════╕
# │                                                          │
# │                           Info                           │
# │                                                          │
# ╘══════════════════════════════════════════════════════════╛
alias ypkg-info="yay -Qi" # Query installed pkgs and their files
alias ypkg-list="yay -Ql" # List files in a pkg
alias ysearch-localdb="yay -Qs"
alias ylist-installed-pkgs-local="yay -Qe"
alias ydisplay-info-repo="yay -Si" # Display info about a pkg in the repo

# Using FZF to search YAY
yfind() {
  yay -Sl | awk '{print $2($4=="" ? "" : " *")}' | fzf --multi --ansi --preview 'yay -Si {1}' --reverse --preview-window right:70% | xargs -ro yay -S
}

# ╒══════════════════════════════════════════════════════════╕
# │                                                          │
# │                         Clean Up                         │
# │                                                          │
# ╘══════════════════════════════════════════════════════════╛
# Remove a pkg, keeps its settings & dependencies
alias yr="yay -Qq | fzf --multi --preview 'yay -Qi {1}' --preview-window right:70% | xargs -ro yay -R"
# Remove a pkg, including its settings & dependencies
alias yrs="yay -Qq | fzf --multi --preview 'yay -Qi {1}' --preview-window right:70% | xargs -ro yay -Rns"
