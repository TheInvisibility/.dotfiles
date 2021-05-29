setxkbmap -layout fr &

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

exec picom -m 1 --experimental-backends --config ~/.config/picom/picom.conf & > ~/.picom.log
nitrogen --restore &

# These are required for Intellij to work
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

start-pulseaudio-x11 &
xbindkeys &

# Add this to your .xinitrc or whatever file starts programs on startup.
# -R restores the last colorscheme that was in use.
# wal -R

# Eyes saver from blue light
redshift -P -O 4500

(conky | while read LINE; do xsetroot -name "$LINE";  done) &
exec dwm 2> ~/.dwm.log
