sh ~/.scripts/dwm_bar.sh &
xrandr --output eDP1 --mode 2560x1600 --output HDMI-1-0 --mode 1920x1080 --above eDP1 &
~/.fehbg &
picom &
xset b off &
while : ; do
    # Log stderror to a file
    exec dbus-launch --sh-syntax --exit-with-session dwm 2> ~/.dwm.log
done
