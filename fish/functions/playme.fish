# Defined in - @ line 2
function playme
	i3-msg 'move scratchpad'
    cvlc --control dbus --random ~/Music/playme/*
end
