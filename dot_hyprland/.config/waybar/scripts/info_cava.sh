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
#             :     @file        :  info-cava.sh                                        #
#             :     @folder      :  ~/.config/waybar/scripts                            #
#             :     @brief       :  display bars based on the sound  	 	 	 	 	#
#             :     @requires    :  bash, cava  	 	 	 	                        #
#             :    @required_by  :  waybar                                              #
#             :     @optional    :  none                                                #
#             :     @Note        :  none                                                #
#_______________________________________________________________________________________#
#                                                                                       #
#             :    Created on   :   23, Mar, 2023                                       #
#             :   Last Updated  :   23, Mar, 2023                                       #
# Update History :                                                                      #
#_______________________________________________________________________________________#
#                                                                                       #

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ "$i" -lt ${#bar} ]; do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i = i + 1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -p "$pipe" ]; then
    unlink "$pipe"
fi
mkfifo "$pipe"

# write cava config
config_file="/tmp/waybar_cava_config"
echo "
[general]
bars = 15
[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7
" >"$config_file"

# run cava in the background
cava -p "$config_file" &

# reading data from fifo
while read -r cmd; do
    echo "$cmd" | sed "$dict"
done <"$pipe"
