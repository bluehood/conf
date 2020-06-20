# Defined in /tmp/fish.se6fhv/playme.fish @ line 2
function playme
	gnome-terminal --role="playmeplayer" -- cvlc -I rc --control dbus --random ~/Music/playme/*
end
