alias lg="lazygit"

alias gstatus="git status"
alias gclone="git clone --depth 1"
alias gfetch="git fetch"
alias gbranch="git branch"
alias gcommit="git commit -m"
alias ginit="git init"
alias gpull="git pull origin"
alias gpush="git push origin"
alias grebase-abort="git rebase --abort"
alias grebase-continue="git rebase --continue"
alias gtag='git tag'
alias gntag='git tag -a'

# checkout git branch (including remote branches)
gbc() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
    branch=$(echo "$branches" |
      fzf-tmux -d $((2 + $(wc -l <<<"$branches"))) +m) &&
    git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# Compare against master branch with
# get git commit sha
# example usage: git rebase -i `gcm`
gcm() {
  local commits commit
  commits=$(git log --color=always --pretty=oneline --abbrev-commit --reverse) &&
    commit=$(echo "$commits" | fzf --tac +s +m -e --ansi --reverse) &&
    echo -n $(echo "$commit" | sed "s/ .*//")
}
