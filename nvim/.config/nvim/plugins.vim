"Initialize plugins
call plug#begin()

"Rust file detection, syntax highlighting, formatting, syntastic integration...
Plug 'rust-lang/rust.vim'

"Fish syntax highlighting, formatting...
Plug 'dag/vim-fish'

"Meson syntax highlighting, formatting...
Plug 'igankevich/mesonic'

"Typst support and syntax highlighting
Plug 'kaarmu/typst.vim'

"Base-16 vim themes
Plug 'chriskempson/base16-vim'

"Repeat the maps of the plugins that support this plugin
Plug 'tpope/vim-repeat'

"Install the NerdTree file manager
Plug 'scrooloose/nerdtree'

"Install CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
