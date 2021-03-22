# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '^'
set __fish_git_prompt_char_stashstate '@'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

function fish_prompt
        set last_status $status
        set_color $fish_color_cwd
        printf '%s' (prompt_pwd)
        set_color normal
        printf '%s ' (__fish_git_prompt)
       set_color normal
end

# Fix gpg signing of git commits with pinentry-tty
export GPG_TTY=(tty)

# For ssh-agent to work
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# add conda
if test -f /home/blue/Tools/conda/bin/conda
   eval /home/blue/Tools/conda/bin/conda "shell.fish" "hook" $argv | source
   conda deactivate
end

# add autojump
if test -f /usr/share/autojump/autojump.fish
   source /usr/share/autojump/autojump.fish
end

# autocompletion for my own commands
complete -c wiki -f -a "(pushd ~/Nextcloud/notes && fd --extension md && popd)"
complete -c sourceroot -f -a "(pushd ~/ROOT && ls -1d *@* && popd)"
