#!/bin/bash
#
# credits:
# (https://www.reddit.com/r/hyprland/comments/17nzedb/switching_audio_outputs_via_binds/?share_id=Y808w29RNcSw7P19wW2AE&utm_name=androidcss)
# (https://codefile.io/f/hWfVjCJqZU)

iDIR="$HOME/.config/hypr/icons/"

# Get Volume
get_volume() {
	volume=$(pamixer --get-volume)
	echo "$volume"
}

# Get icons
get_icon() {
	current=$(get_volume)
	if [[ "$current" -eq "0" ]]; then
		echo "$iDIR/volume_mute.png"
	elif [[ ("$current" -ge "0") && ("$current" -le "30") ]]; then
		echo "$iDIR/volume_low.png"
	elif [[ ("$current" -ge "30") && ("$current" -le "60") ]]; then
		echo "$iDIR/volume_mid.png"
	elif [[ ("$current" -ge "60") && ("$current" -le "100") ]]; then
		echo "$iDIR/volume_high.png"
	fi
}

# Notify
notify_user() {
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$(get_icon)" "Volume : $(get_volume)"
}

# Increase Volume
inc_volume() {
	pamixer -i 5 && notify_user
}

# Decrease Volume
dec_volume() {
	pamixer -d 5 && notify_user
}

# Output to speaker
speaker() {
	pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/volume_low.png" "Speakers"
}

# Output to headset
headset() {
	# Hack below as the Usb headset changes its name dependant on what port its plugged into.
	pactl list | grep "Monitor of Sink: alsa_output.usb-Plantronics" | sed 's/Monitor of Sink: \(.*\)/\1/' | xargs pactl set-default-sink
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/headset.png" "Headphones"
}

# Output to bluetooth
bluetooth() {
	# Hack below as the bluetooth headset changes its name dependant on device.
	pactl list | grep "Monitor of Sink: bluez_output." | sed 's/Monitor of Sink: \(.*\)/\1/' | xargs pactl set-default-sink
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/headset.png" "Bluetooth"
}

# Toggle Mute
toggle_mute() {
	if [ "$(pamixer --get-mute)" == "false" ]; then
		pamixer -m && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/volume_mute.png" "Volume Switched OFF"
	elif [ "$(pamixer --get-mute)" == "true" ]; then
		pamixer -u && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$(get_icon)" "Volume Switched ON"
	fi
}

# Toggle Mic
toggle_mic() {
	if [ "$(pamixer --default-source --get-mute)" == "false" ]; then
		pamixer -m --default-source && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/microphone_mute.png" "Microphone Switched OFF"
	elif [ "$(pamixer --default-source --get-mute)" == "true" ]; then
		pamixer -u --default-source && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/microphone.png" "Microphone Switched ON"
	fi
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_volume
elif [[ "$1" == "--inc" ]]; then
	inc_volume
elif [[ "$1" == "--dec" ]]; then
	dec_volume
elif [[ "$1" == "--speaker" ]]; then
	speaker
elif [[ "$1" == "--headset" ]]; then
	headset
elif [[ "$1" == "--bluetooth" ]]; then
	bluetooth
elif [[ "$1" == "--toggle" ]]; then
	toggle_mute
elif [[ "$1" == "--toggle-mic" ]]; then
	toggle_mic
elif [[ "$1" == "--get-icon" ]]; then
	get_icon
else
	get_volume
fi
