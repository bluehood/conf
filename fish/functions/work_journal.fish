# Defined in /tmp/fish.463z4x/work_journal.fish @ line 2
function work_journal
   set -l fname (date +'%g_%V')"_work.md"
   if test ! -e ~/Wiki_tmp/$fname
      echo -e "# "(date +'Week %V-%g')" work journal\n\n#workjournal" > ~/Wiki_tmp/$fname
   end
   wiki $fname
end
