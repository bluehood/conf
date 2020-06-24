# Defined in /tmp/fish.urpUCr/vr.fish @ line 2
function vr
   vim --servername $VIM_SERVERNAME --remote-send "<C-S>:cd $PWD<CR>"
   if test (count $argv) -eq 0
      vim --servername $VIM_SERVERNAME --remote-send '<C-S>N:enew<CR>'
   else
      vim --servername $VIM_SERVERNAME --remote $argv
   end
end
