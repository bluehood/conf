# Defined in - @ line 2
function playme
	xterm -class "playmeplayer" -e "cvlc -I rc --control dbus --random ~/Music/playme/*"
end
