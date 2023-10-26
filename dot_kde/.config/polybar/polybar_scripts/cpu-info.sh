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
#             :    Edited by     :  Gl00ria @gl00ria                                    #
#             :     GitHub       :  https://github.com/gl00ria                          #
#             :     Source       :      ?                                               #
#                                                                                       #
#             :     @file        :  cpu-info.sh                                         #
#             :     @folder      :  ~/.config/polybar/polybar_scripts                   #
#             :     @brief       :  display cup info by clicking the CPU icon           #
#             :     @requires    :  bash, notify-send, awk                              #
#             :    @required_by  :  polybar                                             #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   26, Sep, 2022                                       #
#             :   Last Updated  :   26, Sep, 2022                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

case "$1" in
    --popup)
        notify-send "CPU " "$(ps axch -o cmd:10,pcpu k -pcpu | head | awk '$0=$0" "' )"
        ;;
    *)
        echo " $(grep 'cpu ' /proc/stat | awk '{cpu_usage=($2+$4)*100/($2+$4+$5)} END {printf "%0.2f%", cpu_usage}')   $(sensors | grep temp1 | head -1 | awk '{print $2}')"
        ;;
esac
