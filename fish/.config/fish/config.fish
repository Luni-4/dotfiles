# Load aliases
if test -e ~/.bash_aliases
    . ~/.bash_aliases
end

# Disable fish greeting message
set fish_greeting

# Terminal emulator renders emoji double-width
set -g fish_emoji_width 2

# Vi key bindings
fish_vi_key_bindings

# Use a line as cursor shape in vi insert mode
set -g fish_cursor_insert line

function fish_prompt

    # Print name and hostname
    set_color d95
    echo -n (whoami)'@power '
    set_color normal

    # Print VCS (git)
    set -l vcs (__fish_vcs_prompt)
    if test -n "$vcs"
         echo -n '('
         set_color d9c
         printf "%s" (string replace -r ' \((\w+)\)' '$1' (__fish_vcs_prompt))
         set_color normal
         echo -n ') '
    end

    # Print PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    echo -n '$ '

end
