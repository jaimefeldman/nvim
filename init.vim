syntax on

set number
"set relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set fileencoding=utf-8
set showmatch
set sw=2
set nobackup
set noswapfile
set hidden			"no exige guardar el archivo cada vez que pasamos de un buffer a otro.
set showmatch		"muestar los parentecis coicidientes para saltar de uno a otro.
set shiftwidth=4	"los espacios que tabula con latecla tab.
set tabstop=4		"complementa lo de la tecla tab.
set autoindent		"mantiene la indentacion cando tabulamos.
set laststatus=2 	"para que la linea de status siempre sea visible.
set bg=dark			"segun el tema que se use el fondo dera el oscuro.
set autochdir		"cuando cambiamos de arcvhivo cambia el directorio de trabajo.
set statusline+=%F
set hlsearch
set incsearch
set smartcase
set ignorecase
set ttyfast

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

"set cc=80
"set cursorline
"set list			" muestra los caracteres ocultos.

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugins-conf.vim
so ~/.config/nvim/maps.vim


