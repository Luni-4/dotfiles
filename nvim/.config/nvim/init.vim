" ==========================
" ===  General settings  ===
" ==========================

"No compatibility with vi
set nocompatible

" ==========================
" ===    Appearance      ===
" ==========================

"Enable true color
set termguicolors

"Show incomplete commands in the right-side of the screen's last line
set showcmd

"Syntax highlighting
syntax on

"Draw a vertical line at the 80th column
set colorcolumn=80

"Render syntax until the 256th column
set synmaxcol=256

"Disable function folding
set nofoldenable

"Show whitespaces
set list listchars=tab:▸·,trail:·

"Enable line numbers
set number


" ==========================
" ===     Commands       ===
" ==========================

"Set leader and localleader to Space
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

"Use mouse in all modes
set mouse=a

"Use spaces for tab
set expandtab

"Scroll horizontally if a line is wider than screen size
set nowrap

"Do not redraw the screen until an operation is complete
set lazyredraw

"Search again from top if there are no matches
set wrapscan

"Find words composed by both lowercase and uppercase letters on searching
set ignorecase
set smartcase

"Use the system clipboard
set clipboard+=unnamedplus

"Ignore these patterns during autocompletion
set wildignore+=.git,*.o,*.obj,*.pyc,*.pyo,__pycache__,*.stackdump,*~.

"Ignore case during autocompletion
set wildignorecase

"Error if there are trailing spaces
match ErrorMsg '\s\+$'


" ==========================
" ===  Keymap bindings   ===
" ==========================

"Save files using Shift+S
nmap <S-s> :w<CR>

"Automatically write software name and author
nnoremap scratch :0r ~/.vim/scratch.txt

"Enable/disable line numbers with Shift+l
nnoremap <S-l> :set nonumber!<CR>

"Discarding changes in exit with Shift+q
nnoremap <S-q> :q!<CR>

"Clear word highlighting using Ctrl+L
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"Remap p using a register
"nnoremap p "0p

" Use F5 to refresh the current file
nnoremap <F5> :e %<CR>

"Use Tab and Shift+Tab to indent and unindent a selection
vmap <Tab> >gv
vmap <S-Tab> <gv


" ==========================
" ===  Files Settings   ===
" ==========================

"Set git commit messages textwidth and draw the relative line
autocmd FileType gitcommit setlocal textwidth=72 colorcolumn=72

"Use text syntax highlighting for markdown
autocmd BufRead,BufNewFile *.md set filetype=text

"Strip trailing whitespaces for some programming languages
autocmd FileType c,cc,cxx,cpp,h,hpp,python,ruby,vim
      \autocmd BufWritePre <buffer> %s/\s\+$//e

"Strip trailing whitespaces for Rust
autocmd BufWritePre *.rs :%s/\s\+$//e

"Hide files, don't close them, if the current buffer has unsaved changes
set hidden

"Reload the files automatically on external changes
set autoread

"Set file to save undo changes
set undofile

" Run rustfmt on saving Rust files
let g:rustfmt_autosave = 1