# Defined in /tmp/fish.d1np6a/work_journal.fish @ line 2
function work_journal
   set -l fname (date +'%g_%V')"_work.md"
   if test ! -e ~/Nextcloud/notes/$fname
      echo -e "# "(date +'Week %V-%g')" work journal\n\n#workjournal" > ~/Nextcloud/notes/$fname
   end
   wiki $fname
end
