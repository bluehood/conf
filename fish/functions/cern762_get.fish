# Defined in - @ line 2
function cern762_get
	set fname (basename $argv[1])
    echo "copying \"$fname\" from cern762..."
    ssh eguiraud@lxplus.cern.ch -- scp -r eguiraud@cern762:$argv[1] blue@lcm.mi.infn.it:.
    scp -r blue@lcm.mi.infn.it:$fname .
    ssh blue@lcm.mi.infn.it -- rm -rf $fname
end
