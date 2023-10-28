#!/usr/bin/env bash

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
#             :     Autor        :  Gl00ria @gl00ria                                    #
#             :     GitHub       :  https://github.com/gl00ria                          #
#                                                                                       #
#             :     @file        :  arch-updates.sh                                     #
#             :     @folder      :  ~/.config/waybar/scripts/                           #
#             :     @brief       :  get the count of the upgradeable pkgs in            #
#                                                                 Arch-based distros.   #
#             :     @requires    :  bash, pacman & yay pkg managers                     #
#             :    @required_by  :  waybar                                              #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   20, Oct, 2023                                       #
# Update History :                                                                      #
# 1st: Moved to waybar & changed polybar deps                                           #
#_______________________________________________________________________________________#
#                                                                                       #

pacman_updates=$(checkupdates 2>&1)
yay_updates=$(yay --aur -Qu 2>&1 | wc -l)
pacman_updates=$(echo "$pacman_updates" | wc -l)
updates=$((pacman_updates + yay_updates))
echo "$updates"
