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
