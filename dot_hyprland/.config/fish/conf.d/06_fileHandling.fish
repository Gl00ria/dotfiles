alias whatsize="du -d 1 -h" ## Display the size of files in current location
alias t="tail -f" ## Outputs the last part of a file
alias find-file="find . -type f -name" ## Find a file with the given name

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


## create a backup file
function backup --argumen filename
    cp $filename $filename.bak
end
