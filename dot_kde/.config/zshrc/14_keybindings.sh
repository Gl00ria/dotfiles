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
#             :     @file        :  14_keybindings.sh                                   #
#             :     @folder      :  ~/.config/zshrc/                                    #
#             :     @brief       :  key-bind some quickies needed to be reached quickly #
#             :     @requires    :  zshShell, fzf, zsh-navigation-tools plugin          #
#             :     @optional    :  none                                                #
#             :     @Note        :  - ^ = Contrl, ^[ = Alt                              #
#                                   - see NOTE:1) {EDITOR} = the default editor         #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

# bindkey -s '^e' '${EDITOR} $(fzf)\n'   ## NOTE:1) find a file & open it with neovim
# bindkey -s '^f' 'n-cd\n'               ## find a dir & cd into it
# bindkey -s '^h' 'n-history\n'          ## search command history
# bindkey -s '^n' 'n-env\n'              ## search vars in the current dir
# bindkey -s '^p' 'n-kill\n'             ## search current runing processes
bindkey '^[l' 'autosuggest-accept'
