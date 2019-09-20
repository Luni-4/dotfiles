" Enable true color
set termguicolors

"Syntax highlighting
syntax on
set colorcolumn=80
set synmaxcol=256

"Hide files, don't close them, if the current buffer has unsaved changes
set hidden

"Disable function folding
set nofoldenable

"Enable line numbers
set number

"Ignore these patterns during autocompletion
set wildignore+=.git,*.o,*.obj,*.pyc,*.pyo,__pycache__,*.stackdump,*~.

"Ignore case during autocompletion
set wildignorecase

"Automatically write software name and author
nnoremap scratch :0r ~/.vim/scratch.txt

"Enable/disable line numbers with Ctrl+l
nnoremap <C-l> :set nonumber!<CR>

"Save files using Shift+S
nmap <S-s> :w<CR>

"Discarding changes in exit with Shift+q
nnoremap <S-q> :q!<CR>

"Remap p command in normal mode
nnoremap p "0p

"Keep selection after indenting source code lines
vnoremap > >gv
vnoremap < <gv

"Remove trailing space in Python
autocmd BufWritePre *.py %s/\s\+$//e

"Remove trailing space in Rust
autocmd BufWritePre *.rs %s/\s\+$//e
