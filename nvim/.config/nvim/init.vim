" ==========================
" ===  General settings  ===
" ==========================

"Load plugins
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
execute 'source ' . s:path . '/plugins.vim'

"No compatibility with vi
set nocompatible

" ==========================
" ===    Appearance      ===
" ==========================

"Enable true color
set termguicolors

"Set base-16 theme called ocean
colorscheme base16-ocean

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

"Tab is four spaces
set tabstop=4 shiftwidth=4

"Use spaces instead of tab in insert mode
set expandtab

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

"Reduce time in milliseconds to wait for a key code sequence to complete
set ttimeoutlen=20

"Scroll horizontally if a line is wider than the screen size
set nowrap

"Show at least one line above/below the cursor
set scrolloff=1

"Move the cursor horizontally in a better way
set sidescrolloff=2

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

"Set spell dictionaries
set spelllang=en,it

"Error if there are trailing spaces
match ErrorMsg '\s\+$'

"Set /g by default
set gdefault

"Enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

"Handle ncm2 popup opening
set completeopt=noinsert,menuone,noselect

"Disable autocompletion messages
set shortmess+=c


" ==========================
" ===  Keymap bindings   ===
" ==========================

"Save files using Shift+S
nmap <S-s> :update<CR>
vmap <S-s> <C-C>:update<CR>
imap <S-s> <C-O>:update<CR>

"Open NerdToggle using Ctrl+n
nmap <C-n> :NERDTreeToggle<CR>

"Automatically write software name and author
nnoremap scratch :0r ~/.vim/scratch.txt<CR>

"Enable/Disable line numbers with Shift+l
nnoremap <S-l> :set nonumber!<CR>

"Discard changes in exit with Shift+q
nnoremap <S-q> :q!<CR>

"Clear word highlighting using Ctrl+L
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"Delete something without erasing the register
nnoremap p "0p

"Use F5 to refresh the current file
nnoremap <F5> :e %<CR>

"Use Tab and Shift+Tab to indent and unindent a selection
vmap <Tab> >gv
vmap <S-Tab> <gv

" ==========================
" ===  Files Settings   ===
" ==========================

augroup buffers_and_files
    autocmd!

    "Set git commit messages textwidth and draw the relative line
    autocmd FileType gitcommit setlocal textwidth=72 colorcolumn=72

    "Do not break words and enable the spell checker for markdown and text
    "files
    autocmd FileType markdown,text setlocal linebreak spell

    "Strip trailing whitespaces for some programming languages
    autocmd FileType c,cc,cxx,cpp,h,hpp,java,python,ruby,vim
      \ autocmd BufWritePre <buffer> :%s/\s\+$//e

    "Strip trailing whitespaces for Rust
    autocmd BufWritePre *.rs :%s/\s\+$//e

    "Automatically close vim if NERDTree is the only buffer left
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") &&
      \ b:NERDTree.isTabTree()) | q | endif
augroup end

"Hide files, don't close them, if the current buffer has unsaved changes
set hidden

"Reload the files automatically on external changes
set autoread

"Set file to save undo changes
set undofile

"Highlight C code
let c_gnu = 1
let c_space_errors = 1

"Run rustfmt before saving Rust files
let g:rustfmt_autosave = 1
