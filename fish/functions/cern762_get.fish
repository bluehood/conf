# Defined in /tmp/fish.1oEmnT/cern762_get.fish @ line 2
function cern762_get
   set fname (basename $argv[1])
   echo "copying \"$fname\" from cern762..."
   ssh eguiraud@lxplus.cern.ch -- scp -r eguiraud@cern762:$argv[1] /eos/user/e/eguiraud/scratch/.
   and scp -r eguiraud@lxplus.cern.ch:/eos/user/e/eguiraud/scratch/$fname .
   and ssh eguiraud@lxplus.cern.ch -- rm -rf /eos/user/e/eguiraud/scratch/$fname
end
