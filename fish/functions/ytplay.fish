# Defined in /tmp/fish.MLrEI0/ytplay.fish @ line 2
function ytplay
   test -z "$argv" && notify-send "ytplay: nothing to search" && exit 1
   # grep [y]tdl to exclude grep itself from the grepping
   set OLD_MPV_PID (ps xo pid,command --no-headers | grep -m1 "mpv .* [y]tdl" | cut -f2 -d' ')
   test -n "$OLD_MPV_PID" && kill $OLD_MPV_PID
   notify-send "Searching YouTube for \"$argv\"..."
   set RET (youtube-dl -s ytsearch10:"$argv" --get-title --get-id)
   set NRET (count $RET)
   set TITLES $RET[(seq 1 2 $NRET)]
   set IDS $RET[(seq 2 2 $NRET)]
   set ID (string join '|' $TITLES | \
           rofi -dmenu -i -format 'd' -sep '|' -columns 1 -lines 10 -no-fixed-num-lines -p 'select track')
   mpv --vid=no ytdl://{$IDS[$ID]}
end
