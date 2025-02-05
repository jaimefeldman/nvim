" Plugins instalados.

call plug#begin('~/.config/nvim/plugged')
	
	" Themes
	"Plug 'sainnhe/gruvbox-material'
	"Plug 'morhetz/gruvbox'
	Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }

	" Syntax
	" multitud de resaltados para diferentes lenguajes de programación. 
	Plug 'sheerun/vim-polyglot'

	" Status bar.
	Plug 'maximbaz/lightline-ale'
	Plug 'itchyny/lightline.vim' 

	"Buscador de archivos en arbol.
	Plug 'scrooloose/nerdtree'

	"Apertura y cierre automatico de parentesis.
	"Utilizaré Ultisnipped.
	"Plug 'jiangmiao/auto-pairs' 

	"Etiquteas para componentes html las cierra automaticamente
	"Utilizaré Ultisnipped
	Plug 'alvan/vim-closetag' 
	
	"selecciona un texo y lo envuelve en paretesis comillas o llaves.
	"como se usa, se selecciona un texto, pude ser usando el comando vi" o
	"vi) vi] dependiendo dentro de que este el texto o solo seleccionarlo von
	"v luego retroceder un caracter y presionar [space + S] seguideo de " o )
	"o ] o de lo que se quiera rodear.
	Plug 'tpope/vim-surround'

	" Autocomletado
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'       " Snippets are separated from the engine. Add this if you want them:
	Plug 'xavierd/clang_complete'
	Plug 'ervandew/supertab'
	"no me gusto.
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	" Test unitarios.
	Plug 'tyewang/vimux-jest-test'
	"Plug 'janko-m/vim-test'""Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"IDE
	" Buscador de archivos o patrones dentro de archivos.
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'

	Plug 'easymotion/vim-easymotion'
	Plug 'mhinz/vim-signify'
	Plug 'yggdroot/indentline'
	" funciona estando en la line y presionando <space> c <space> o
	" seeleciondo in bloque de código.
	Plug 'scrooloose/nerdcommenter' 
 	
	Plug 'ycm-core/YouCompleteMe'
	"Plug 'davidhalter/jedi-vim'		"Auto completado de python.


	
call plug#end()


