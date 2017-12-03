# Defined in - @ line 1
function cern762
	if host cern762 >/dev/null
        ssh -X eguiraud@cern762
    else
        ssh -t eguiraud@lxplus.cern.ch -- ssh -t eguiraud@cern762 tmux attach
    end
end
