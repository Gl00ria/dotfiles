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
#             :     @file        :  08_git.sh                                           #
#             :     @folder      :  ~/.config/bash/                                     #
#             :     @brief       :  aliases for Git                                     #
#             :     @requires    :  bashShell, Git, forgit plugin                       #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

alias gadd="forgit::add"
alias gadd-all="forgit::add ."
alias glog="forgit::log"
alias gdiff="forgit::diff"
alias greset_ahead="forgit::reset::ahead"
alias gignore="forgit::ignore"
alias gcheckout_file="forgit::checkout::file"
alias gcheckout_tag="forgit::checkout::tag"
alias gcheckout_commit="forgit::checkout::commit"
alias grevert_commit="forgit::revert::commit"
alias gcheckout_branch="forgit::checkout::branch"
alias gbranch_delete="forgit::branch::delete"
alias gclean="forgit::clean"
alias gshow_stash="forgit::stash::show"
alias gcherry_pick="forgit::cherry::pick"
alias grebase="forgit::rebase"
alias gblame="forgit::blame"
alias gfixup="forgit::fixup"

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

## Bare git repo alias for dotfiles
alias gloorifiles="/usr/bin/git --git-dir=$HOME/Gl00riFiles --work-tree=$HOME"
