# Defined in /tmp/fish.jQxouz/wiki.fish @ line 2
function wiki --wraps='vim -S ~/.vim/wiki.vim' --wraps='nvim -S ~/.vim/wiki.vim'
  set -l notes_dir "/home/blue/Nextcloud/notes"

  if test (count $argv) -eq 0
    nvim -S ~/.vim/wiki.vim "+chdir $notes_dir"
    return
  end

  set -l files
  for arg in $argv;
    set files $files $notes_dir/$arg
  end
  nvim -S ~/.vim/wiki.vim $files
end
