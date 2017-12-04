# Defined in - @ line 2
function cern762
	if host cern762 >/dev/null
        ssh -t eguiraud@cern762 tmux attach
    else
        ssh -t eguiraud@lxplus.cern.ch -- ssh -t eguiraud@cern762 tmux attach
    end
end
