set nocompatible                     "Choose no compatibility with vi
set showcmd                          "Display incomplete commands

filetype plugin indent on            "Load file type plugins and indentation

set enc=utf-8                        "Character encoding
set fencs=utf-8,cp932                "Preferred character encoding

"Syntax highlighting
syntax on                            "Set syntax highlighting
set colorcolumn=80                   "Highlight column = 80
set synmaxcol=256                    "Limit syntax highlighting to X columns

"Whitespaces
set list listchars=tab:▸·,trail:·    "Show trailing spaces
set ff=unix ffs=unix,dos             "Preferred EOL style

"No wrap line
set nowrap

"Search again from top if no matches
set wrapscan

"Tab handling
set tabstop=2 shiftwidth=2           "Tab is two spaces
set expandtab                        "Use spaces instead of tab in insert mode

"Backspace through everything in insert mode
set backspace=indent,eol,start

"Backup and swap options
set nobackup                         "No backup
set noswapfile                       "No swap

"Buffers
set hidden

"Disable function folding
set nofoldenable

"Enable line numbers
set number

"Ignore files in commands and plugins
set wildignore+=.git
set wildignore+=*.o,*.obj
set wildignore+=*.pyc,*.pyo,__pycache__
set wildignore+=*.stackdump
set wildignore+=*~.*
set wildignorecase

"Automatically write software name and author
nnoremap scratch :0r ~/.vim/scratch.txt

"Enable/disable line numbers with Ctrl+l
nnoremap <C-l> :set nonumber!<CR>
"Save files using Shift+S
nmap <S-s> :w<CR>
"Exit discarding changes
nnoremap <S-q> :q!<CR>

"Terminal's title, visual flash and audio beeps
set title
set visualbell t_vb=
set noerrorbells

"Keep selection after indenting source code lines
vnoremap > >gv
vnoremap < <gv

"Join two separate comments into one line
set formatoptions+=j

"Error if there are trailing spaces
match ErrorMsg '\s\+$'

"Remove trailing space in Python
autocmd BufWritePre *.py %s/\s\+$//e
