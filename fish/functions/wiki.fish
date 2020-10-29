# Defined in /tmp/fish.PsGDuk/wiki.fish @ line 2
function wiki --wraps='vim -S ~/.vim/wiki.vim' --description 'alias wiki vim -S ~/.vim/wiki.vim'
  set -l files
  for arg in $argv;
    set files $files /home/blue/Nextcloud/notes/$arg
  end
  vim -S ~/.vim/wiki.vim $files;
end
