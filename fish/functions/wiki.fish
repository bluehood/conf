# Defined in /tmp/fish.F6OFUR/wiki.fish @ line 2
function wiki --wraps='vim -S ~/.vim/wiki.vim'
  set -l notes_dir "/home/blue/Nextcloud/notes"

  if test (count $argv) -eq 0
    vim -S ~/.vim/wiki.vim "+chdir $notes_dir"
    return
  end

  set -l files
  for arg in $argv;
    set files $files $notes_dir/$arg
  end
  vim -S ~/.vim/wiki.vim $files
end
