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
#             :     @file        :  01_init.fish                                        #
#             :     @folder      :  ~/.config/fish/conf.d/                              #
#             :     @brief       :  setting PATHS, exports                              #
#             :     @requires    :  fishShell, (1) starship                             #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#

set fish_greeting         ## No fishy greeting anymore

# Starship, Cross-shell prompt
# (1) Starship prompt
set -x STARSHIP_CONFIG $HOME/.config/starship/starship.toml
starship init fish | source

## PATH
if [ -d $HOME/.bin ]
  set PATH $HOME/.bin $PATH
end

if [ -d $HOME/.local/bin ]
  set PATH $HOME/.local/bin $PATH
end

## Rofi
set -x PATH $HOME/.config/rofi/bin $PATH

## Preferred editor for local and remote sessions
if [ -n $SSH_CONNECTION ]
  set -x EDITOR $( echo $(which nvim) || echo $(which vim) || echo $(which vi) )
else
  set -x EDITOR $( echo $(which nvim) || echo $(which vim) || echo $(which vi) )
end

## The man database
set -x MANPATH /usr/local/man $MANPATH

## "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

## "vim" as manpager
# set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

## "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#FF0000'
set fish_color_param brcyan
