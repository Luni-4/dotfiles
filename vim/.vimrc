set nocompatible                     "Choose no compatibility with vi"
set showcmd                          "Display incomplete commands
filetype plugin indent on            "Load file type plugins and indentation
set enc=utf-8                        "Character encoding
set fencs=utf-8,cp932                "Preferred character encoding

"Syntax highlighting
syntax on                            "Set syntax highlighting
set synmaxcol=256                    "Limit syntax highlighting to X columns

"Whitespaces
set list listchars=tab:▸·,trail:·    "Show trailing spaces"
set ff=unix ffs=unix,dos             "Preferred EOL styles"
set nowrap                           "No wrap line
set wrapscan                         "Search again from top or bottom if no matches"
set tabstop=2 shiftwidth=2           "Tab is two spaces"
set expandtab                        "Use spaces instead of tabs in insert mode
set backspace=indent,eol,start       "Backspace through everything in insert mode

"Backup and swap options"
set nobackup                         "No backup"
set noswapfile                       "No swap"

"Buffers
set hidden

"Disable function folding
set nofoldenable

"Line numbers
set number                           "Enable line numbers
nnoremap <C-l> :set nonumber!<CR>

"Ignore files in commands and plugins
set wildignore+=.git
set wildignore+=*.o,*.obj
set wildignore+=*.pyc,*.pyo,__pycache__
set wildignore+=*.stackdump
set wildignore+=*~.*
set wildignorecase

"Terminal's title, visual flash and audio beeps"
set title
set visualbell t_vb=
set noerrorbells

"Keep selection after indenting source code lines
vnoremap > >gv
vnoremap < <gv

"Join two separate comments into one line
set formatoptions+=j

"Error message"
"match ErrorMsg '\%>100v.\+'          "Error if a line is greater than 100 characters
match ErrorMsg '\s\+$'               "Error if there are trailing spaces
