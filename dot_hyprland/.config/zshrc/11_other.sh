alias nv="neovide --multigrid"
# alias neovide="neovide --multigrid"
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
## Downgrade
alias downgrade="sudo downgrade"

## alias grep="grep --color=auto"
alias grep="rg --color=auto"

alias fs-usage="df -h" ## human-readable sizes
# determine the file system type
fs-type() {
	df -Th | grep '^/dev'
}
alias free_mem="free -h"
alias rm="trash-put"
alias icat="kitty +kitten icat" ## view image with lolo caty

## (1) https://github.com/dylanaraps/pywal
alias wal="wal -i ~/Pictures/SlideShow" ## Change terminal's colorscheme based on the current wallpaper
## (2) https://github.com/braheezy/hangman
alias game="cd ~/Downloads/hangman && go run main.go" ## Let your brain blowup

## (3) Don't forget commands anymore
forgot() {
	cat ~/SexyCommands.norg
}

## get the current weather based in ur current location
weather() {
	curl "https://wttr.in/${1}"
}

# nvim destro swithcher
alias nvl="NVIM_APPNAME=LazyVim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"
function nvims() {
	items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim")
	config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
	if [[ -z $config ]]; then
		echo "Nothing selected"
		return 0
	elif [[ $config == "default" ]]; then
		config=""
	fi
	NVIM_APPNAME=$config nvim "$@"
}
# bindkey -s ^a "nvims\n"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
