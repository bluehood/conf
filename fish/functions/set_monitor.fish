# Defined in /tmp/fish.iS9P75/set_monitor.fish @ line 2
function set_monitor
   xrandr --output DP1 --mode 1920x1200
   xrandr --output DP1 --above eDP1
   change_wallpaper
end
