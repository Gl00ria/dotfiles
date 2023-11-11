#!/usr/bin/env sh


# detect hypr theme and initialize variables

ScrDir=`dirname $(realpath $0)`
source $ScrDir/globalcontrol.sh
waybar_dir="$HOME/.config/waybar"
modules_dir="$waybar_dir/modules"
in_file="$waybar_dir/modules/style.css"
out_file="$waybar_dir/style.css"
src_file="$HOME/.config/hypr/themes/theme.conf"

if [ "$EnableWallDcol" -eq 1 ] ; then
    ln -fs $waybar_dir/themes/Wall-Dcol.css $waybar_dir/themes/theme.css
    reload_flag=1
elif [ $(readlink $waybar_dir/themes/theme.css) != "$waybar_dir/themes/${gtkTheme}.css" ] ; then
    ln -fs $waybar_dir/themes/${gtkTheme}.css $waybar_dir/themes/theme.css
    reload_flag=1
fi


# calculate height from control file or monitor res

b_height=`grep '^1|' $waybar_dir/config.ctl | cut -d '|' -f 2`

if [ -z $b_height ] || [ "$b_height" == "0" ]; then
    y_monres=`cat /sys/class/drm/*/modes | head -1 | cut -d 'x' -f 2`
    b_height=$(( y_monres*3/100 ))
fi


# calculate values based on height

export b_radius=$(( b_height*70/100 ))   # block rad 70% of height (type1)
export c_radius=$(( b_height*25/100 ))   # block rad 25% of height {type2}
export t_radius=$(( b_height*25/100 ))   # tooltip rad 25% of height
export e_margin=$(( b_height*30/100 ))   # block margin 30% of height
export e_paddin=$(( b_height*10/100 ))   # block padding 10% of height
export g_margin=$(( b_height*14/100 ))   # module margin 14% of height
export g_paddin=$(( b_height*15/100 ))   # module padding 15% of height
export w_radius=$(( b_height*30/100 ))   # workspace rad 30% of height
export w_margin=$(( b_height*10/100 ))   # workspace margin 10% of height
export w_paddin=$(( b_height*10/100 ))   # workspace padding 10% of height
export w_padact=$(( b_height*40/100 ))   # workspace active padding 40% of height
export s_fontpx=$(( b_height*38/100 ))   # font size 38% of height

if [ $b_height -lt 30 ] ; then
    export e_paddin=0
fi
if [ $s_fontpx -lt 10 ] ; then
    export s_fontpx=10
fi


# list modules and generate theme style

export modules_ls=$(grep -m 1 '".*.": {'  --exclude="$modules_dir/footer.jsonc" $modules_dir/*.jsonc | cut -d '"' -f 2 | awk -F '/' '{ if($1=="custom") print "#custom-"$NF"," ; else print "#"$NF","}')
envsubst < $in_file > $out_file


# override rounded couners

hypr_border=`awk -F '=' '{if($1~" rounding ") print $2}' $src_file | sed 's/ //g'`
if [ "$hypr_border" == "0" ] ; then
    sed -i "/border-radius: /c\    border-radius: 0px;" $out_file
fi


# restart waybar

if [ "$reload_flag" == "1" ] ; then
    killall waybar
    waybar > /dev/null 2>&1 &
    # killall -SIGUSR2 waybar
fi

