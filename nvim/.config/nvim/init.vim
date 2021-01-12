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

"Open NerdToggle using Ctrl+n
nmap <C-n> :NERDTreeToggle<CR>

"GoTo code navigation using CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

"Enable/Disable line numbers with Shift+l
nnoremap <S-l> :set nonumber!<CR>

"Discard changes in exit with Shift+q
nnoremap <S-q> :q!<CR>

"Use Ctrl+i and Ctrl+b to run the isort and black commands
nnoremap <silent> <C-i> :Isort<CR>
nnoremap <silent> <C-b> :Black<CR>

"Clear word highlighting using Ctrl+L
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"Use F5 to refresh the current file
nnoremap <F5> :e %<CR>

"Use Tab and Shift+Tab to indent and unindent a selection
vmap <Tab> >gv
vmap <S-Tab> <gv

"Move between windows with Alt-hjkl in terminal, insert and normal mode
tnoremap <silent> <A-h> <C-\><C-N><C-w>h
tnoremap <silent> <A-j> <C-\><C-N><C-w>j
tnoremap <silent> <A-k> <C-\><C-N><C-w>k
tnoremap <silent> <A-l> <C-\><C-N><C-w>l
inoremap <silent> <A-h> <C-\><C-N><C-w>h
inoremap <silent> <A-j> <C-\><C-N><C-w>j
inoremap <silent> <A-k> <C-\><C-N><C-w>k
inoremap <silent> <A-l> <C-\><C-N><C-w>l
nnoremap <silent> <A-h> <C-w>h
nnoremap <silent> <A-j> <C-w>j
nnoremap <silent> <A-k> <C-w>k
nnoremap <silent> <A-l> <C-w>l

"Map Alt-1..9 to move between tabs in terminal, insert and normal mode
for n in [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let tab_n = '> :tabnext ' . string(n) . '<CR>'
  let tab_ti = '> <C-\><C-N>:tabnext ' . string(n) . '<CR>'
  call execute('nnoremap <silent> <C-f' . string(n) . tab_n)
  call execute('inoremap <silent> <C-f' . string(n) .  tab_ti)
  call execute('tnoremap <silent> <C-f' . string(n) . tab_ti)
endfor

" ==========================
" ===  Files Settings   ===
" ==========================

augroup buffers_and_files
    autocmd!

    "Set git commit messages textwidth and draw the relative line
    autocmd FileType gitcommit setlocal textwidth=72 colorcolumn=72

    "Do not break words and enable the spell checker for markdown, text
    "Python and Rust files
    autocmd FileType markdown,text,python,rust setlocal linebreak spell

    "Add an header to new shell scripts
    autocmd BufNewFile *.sh 0put =\"#!/bin/bash\"|$

    "Add an header to new Python scripts
    autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python3\"|$

    "Strip trailing whitespaces for some programming languages
    autocmd FileType c,cc,cxx,cpp,h,hpp,java,python,ruby,rust,vim
      \ autocmd BufWritePre <buffer> :%s/\s\+$//e

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

"Max Python line length accepted
let g:black_linelength = 79

"Disable the isort default mapping for the visual mode
let g:vim_isort_map = ''

"Run rustfmt before saving Rust files
let g:rustfmt_autosave = 1

" ==========================
" ===     Functions      ===
" ==========================

"Show Rust documentation using CoC
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
