# Defined in /tmp/fish.Fbixig/ytstop.fish @ line 2
function ytstop
   # grep [y]tdl to exclude grep itself from the grepping
   set MPV_PID (ps xo pid,command --no-headers | grep -m1 "mpv .* [y]tdl" | cut -f2 -d' ')
   test -n "$MPV_PID" && kill $MPV_PID
end
