call plug#begin()

" Rust file detection, syntax highlighting, formatting, syntastic integration...
Plug 'rust-lang/rust.vim'

" Fast and hackable completion framework for Neovim
Plug 'ncm2/ncm2'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-ultisnips'

Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-rst-subscope'
call plug#end()
