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
#             :     @file        :  cpu-temp.sh                                         #
#             :     @folder      :  ~/.config/polybar/polybar_scripts                   #
#             :     @brief       :  display CPU temperature  	 	 	 	 	 	 	 	            #
#             :     @requires    :  bash, sensors, awk  	 	 	 	                        #
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

heatSensors=$(sensors | grep -m 1 id | awk '{print substr($4, 2, length($4)-5)}')

# from  0°C to 40°C print -> 
if [[ "$heatSensors" -le 40 ]]
	then
		# the ' %{T0} ' -> pass font type to polybar config file
		# the selected font type is number 0, which is (font-0 = FiraCode)
		echo "%{T0} %{F}$heatSensors°C"

# from 40°C to 60°C print -> 
elif [[ "$heatSensors" -le 60 ]]
	then
		echo "%{T0} %{F}$heatSensors°C"

# from 60°C to 85°C print -> 
elif [[ "$heatSensors" -le 85 ]]
	then
		echo "%{T0} %{F}$heatSensors°C"

# from 85°C to +... print -> 
elif [[ "$heatSensors" -gt 85 ]]
	then
		# the  ' -n "%{F#FF0008}"  ' -> red font as 85°C to +... is the default warn temperature
		echo -n "%{T0}%{F#FF0008} %{F#FF0008}$heatSensors°C"
fi
