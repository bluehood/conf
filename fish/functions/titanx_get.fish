# Defined in /tmp/fish.nxjUut/titanx_get.fish @ line 1
function titanx_get
   set fname (basename $argv[1])
   echo "copying \"$fname\" from titanx..."
   ssh eguiraud@lxplus.cern.ch -- scp -r eguiraud@titanx:$argv[1] blue@lcm.mi.infn.it:scratchspace/.
   and scp -r blue@lcm.mi.infn.it:scratchspace/$fname .
   and ssh blue@lcm.mi.infn.it -- rm -rf scratchspace/$fname
end
