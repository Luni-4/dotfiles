"Initialize plugins
call plug#begin()

"Rust file detection, syntax highlighting, formatting, syntastic integration...
Plug 'rust-lang/rust.vim'

"Python file formatting
Plug 'psf/black'

"Order Python imports correctly
Plug 'fisadev/vim-isort'

"Convert hex to dec and vice versa
Plug 'rr-/vim-hexdec'

"Fish syntax highlighting, formatting...
Plug 'dag/vim-fish'

"Meson syntax highlighting, formatting...
Plug 'igankevich/mesonic'

"Opencl syntax highlighting, formatting
Plug 'chitalu/vim-opencl'

"Pandoc support and markdown syntax highlighting
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

"Base-16 vim themes
Plug 'chriskempson/base16-vim'

"Simplify words search and replacement
Plug 'tpope/vim-abolish'

"Handle files using Unix commands
Plug 'tpope/vim-eunuch'

"Simplify quoting/parenthesizing words and sentences
Plug 'tpope/vim-surround'

"Repeat the maps of the plugins that support this plugin
Plug 'tpope/vim-repeat'

"Install the NerdTree file manager
Plug 'scrooloose/nerdtree'

"Install CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Fast and hackable completion framework for Neovim
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'

call plug#end()
