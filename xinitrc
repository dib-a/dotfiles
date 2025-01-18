while true
do
    sh /opt/dwm/bar.sh
    sleep 1 
done &

setxkbmap -layout de -variant us &

picom -b &

xrandr --output DP2 --mode 3440x1440 --rate 100 &

~/scripts/change-wallpaper.sh &
#wallset -I 1 &
~/scripts/startup.sh &

~/scripts/livewallpaper.sh &

exec dwm
