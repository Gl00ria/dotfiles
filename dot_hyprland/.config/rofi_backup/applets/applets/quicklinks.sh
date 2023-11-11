#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/applets/android"
rofi_command="rofi -theme $dir/six.rasi"

# Error msg
msg() {
	rofi -theme "$dir/message.rasi" -e "$1"
}

# Browser
if [[ -f /usr/bin/firefox ]]; then
	app="firefox"
elif [[ -f /usr/bin/brave ]]; then
	app="brave"
elif [[ -f /usr/bin/chromium ]]; then
	app="chromium"
else
	msg "No suitable web browser found!"
	exit 1
fi

# Links
google=""
archwiki=""
twitter=""
github=""
mail=""
youtube=""

# Variable passed to rofi
options="$google\n$archwiki\n$twitter\n$github\n$mail\n$youtube"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  Firefox" -dmenu -selected-row 0)"
case $chosen in
    $google)
        $app https://www.duckduckgo.com &
        ;;
    $archwiki)
        $app https://wiki.archlinux.org/ &
        ;;
    $twitter)
        $app https://www.twitter.com &
        ;;
    $github)
        $app https://www.github.com &
        ;;
    $mail)
        $app https://www.gmail.com &
        ;;
    $youtube)
        $app https://www.youtube.com &
        ;;
esac
