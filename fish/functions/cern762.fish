# Defined in - @ line 2
function cern762
	set opt "attach"
    if [ -n "$argv[1]" -a "$argv[1]" = "new" ]
        set opt "new"
    end
    if host cern762 >/dev/null
        ssh -t eguiraud@cern762 tmux $opt
    else
        ssh -t eguiraud@lxplus.cern.ch -- ssh -t eguiraud@cern762 tmux $opt
    end
end
