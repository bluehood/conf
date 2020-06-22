# Defined in /tmp/fish.pR6ECU/ytstop.fish @ line 2
function ytstop
   # grep [y]tdl to exclude grep itself from the grepping
   set MPV_PID (ps xo pid,command --no-headers | grep -m1 "mpv .* [y]tdl" | cut -f3 -d' ')
   test -n "$MPV_PID" && kill $MPV_PID
   return 0
end
