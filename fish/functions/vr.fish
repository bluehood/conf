# Defined in /tmp/fish.J4pn09/vr.fish @ line 2
function vr
   vim --servername $VIM_SERVERNAME --remote-send "<C-S>:cd $PWD<CR>"
   if test (count $argv) -eq 0
      vim --servername $VIM_SERVERNAME --remote-send '<C-S>N:tabe<CR>'
   else
      vim --servername $VIM_SERVERNAME --remote-tab $argv
   end
end
