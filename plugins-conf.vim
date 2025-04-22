" Configurando la tecla maestra <space> y luego
" para movernos entre marcos <frames>. con la tecla space + h, j, k, l
let mapleader = " "
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Dividiendo la pantalla.
"
" Divide vertical.
nnoremap <leader>v <C-w>v
" Divide horizontal.
nnoremap <leader>n <C-w>s
" Cierra la divición.
nnoremap <leader>cw <C-w>c
" Shift enter para saltar a la siguiente linea sin romperla
inoremap <M-CR> <Esc>o

" El Tema Gruvbox.

" El tema mini-hues
"https://github.com/echasnovski/mini.nvim/tree/main

"colorscheme default

function! GruvboxToggle()
  if &background ==# 'dark'
    set background=light
    syntax enable
    hi Normal        ctermfg=235 ctermbg=NONE
    hi Comment       ctermfg=246 cterm=italic
    hi Constant      ctermfg=130
    hi String        ctermfg=100
    hi Character     ctermfg=108
    hi Number        ctermfg=130
    hi Boolean       ctermfg=100
    hi Identifier    ctermfg=66
    hi Function      ctermfg=66
    hi Statement     ctermfg=132
    hi Conditional   ctermfg=132
    hi Repeat        ctermfg=166
    hi Label         ctermfg=132
    hi Operator      ctermfg=94
    hi Keyword       ctermfg=172
    hi Include       ctermfg=60
    hi Exception     ctermfg=124
    hi PreProc       ctermfg=130
    hi Define        ctermfg=130
    hi Macro         ctermfg=130
    hi Type          ctermfg=60
    hi StorageClass  ctermfg=60
    hi Structure     ctermfg=60
    hi Typedef       ctermfg=60
    hi Visual        ctermfg=223 ctermbg=250
    hi ColorColumn   ctermbg=252
    hi CursorLine    ctermbg=252
    hi LineNr        ctermfg=245
    hi StatusLine    ctermfg=235 ctermbg=252
    hi VertSplit     ctermfg=252 ctermbg=252
    echo "🌓 Modo claro (fondo terminal) activado"
  else
    set background=dark
    syntax enable
    hi Normal        ctermfg=223 ctermbg=235
    hi Comment       ctermfg=245 cterm=italic
    hi Constant      ctermfg=172
    hi String        ctermfg=106
    hi Character     ctermfg=108
    hi Number        ctermfg=172
    hi Boolean       ctermfg=106
    hi Identifier    ctermfg=108
    hi Function      ctermfg=108
    hi Statement     ctermfg=132
    hi Conditional   ctermfg=132
    hi Repeat        ctermfg=166
    hi Label         ctermfg=132
    hi Operator      ctermfg=166
    hi Keyword       ctermfg=172
    hi Include       ctermfg=66
    hi Exception     ctermfg=124
    hi PreProc       ctermfg=172
    hi Define        ctermfg=172
    hi Macro         ctermfg=172
    hi Type          ctermfg=66
    hi StorageClass  ctermfg=66
    hi Structure     ctermfg=66
    hi Typedef       ctermfg=66
    hi Visual        ctermfg=235 ctermbg=245
    hi ColorColumn   ctermbg=236
    hi CursorLine    ctermbg=236
    hi LineNr        ctermfg=239
    hi StatusLine    ctermfg=223 ctermbg=236
    hi VertSplit     ctermfg=236 ctermbg=236
    echo "🌙 Modo oscuro activado"
  endif
endfunction

nnoremap <leader>m :call GruvboxToggle()<CR>

" Basado en Gruvbox (cterm)
"hi Normal        ctermfg=223 ctermbg=235
"hi Comment       ctermfg=245 cterm=italic
"hi Constant      ctermfg=172
"hi String        ctermfg=106
"hi Character     ctermfg=108
"hi Number        ctermfg=172
"hi Boolean       ctermfg=106
"hi Identifier    ctermfg=108
"hi Function      ctermfg=108
"hi Statement     ctermfg=132
"hi Conditional   ctermfg=132
"hi Repeat        ctermfg=166
"hi Label         ctermfg=132
"hi Operator      ctermfg=166
"hi Keyword       ctermfg=172
"hi Include       ctermfg=66
"hi Exception     ctermfg=124
"hi PreProc       ctermfg=172
"hi Define        ctermfg=172
"hi Macro         ctermfg=172
"hi Type          ctermfg=66
"hi StorageClass  ctermfg=66
"hi Structure     ctermfg=66
"hi Typedef       ctermfg=66
"hi Visual        ctermfg=235 ctermbg=245
"hi ColorColumn   ctermbg=236
"hi CursorLine    ctermbg=236
"hi LineNr        ctermfg=239
"hi StatusLine    ctermfg=223 ctermbg=236
"hi VertSplit     ctermfg=236 ctermbg=236

set laststatus=2
set noshowmode
"set colorcolumn=90
set number

" Para craer un saltos de liena o corte de linea real.
set textwidth=90
set wrapmargin=0
set formatoptions+=t
set linebreak 

"Para crear saldos de liena solo para visualizacion.
"set textwidth=0
"set wrapmargin=0
"set wrap
"set linebreak # (optional - breaks by word rather than character)
"set columns=80

" Agranda o achica los espacios de las diviciones de pantalla.
" con el teclado en ingles presionamos el + y se nos agranda la ventana
" y <shift -> achica la ventana.
map _ 10<C-W>-
map + 10<C-W>+
"map > 10<S-W>[
"map < 10<S-W>]
nnoremap > 10<C-w>>
nnoremap < 10<C-w><

" Nerdtree.
map <leader>o :NERDTree ~/<CR>
nnoremap <silent> <Leader>c :NERDTreeClose<CR>
nnoremap <silent> <Leader>f :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1

"Idenatacion seleccionando algun bloque y luego Shift + > o <
vnoremap > >gv
vnoremap < <gv

"Configuración para los testing.
"
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

"para guardar y salir mas rapido
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>X :x<CR>
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>xa :xa<CR>
nnoremap <Leader>qa :qa<CR>

"para buscar un archivo o una cadena de texto dentro de un archivo
map <Leader>i :Files<CR>
map <Leader>g :Ag<CR>

"obtiene la ruta del archivo actual
nnoremap <leader>p :let @*=expand("%")<CR>
nnoremap <leader>P :let @*=expand("%:p")<CR>

" buffers
map <Leader>b :Buffers<cr>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>se <Plug>(easymotion-s2)

" Abrindo una terminal
set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction

nnoremap <C-t> :call OpenTerminal()<CR>

"Mostar numeros 
nnoremap <Leader>nu :se nu<CR>
nnoremap <Leader>no :se nonu<CR>
nnoremap <Leader>re :set relativenumber<CR>
nnoremap <Leader>nor :set norelativenumber<CR>

"Mostando caracteres ocultos
nnoremap <Leader>ch :se list<CR>
nnoremap <Leader>noc :se nolist<CR>

"Atajo para el plugin Back de autoindentacion de archivos python.
nnoremap <Leader>id :Black<CR>

nnoremap <Leader>p :echo expand('%:p')<CR>

"Mostando la linea del cursosr
nnoremap <Leader>cl :se cursorline<CR>
nnoremap <Leader>ncl :se nocursorline<CR>

"remplaznado el ctrl+y para seleccionar el item del menu del autocompletado
"por la tecla enter

"remplazando el moverse por el pop-menu de autocompletado con ctrl-j y ctrl-k
inoremap <expr> <S-j> pumvisible() ? "\<C-N>" : "j"
inoremap <expr> <S-k> pumvisible() ? "\<C-P>" : "k"

"nohighlight, liplia los elementos seleccionador o resaltados
nnoremap <Leader>noh :noh<CR>

"YCM
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
let g:syntastic_java_checkers = []

let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

"moviendo lineas hacia arriba o abajo.

"en modo normal movemos las lineas con shift + j o k
nnoremap <S-j> :m+<CR>==
nnoremap <S-k> :m-2<CR>==

"en modo insert movemos las lineas con Ctrl+j o k
inoremap <C-k> <Esc>:m-2<CR>==gi
inoremap <C-j> <Esc>:m+<CR>==gi

"en modo visual movemos las lineas con Ctrl+j o k
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

"desabilitando la molesta barra roja genrada en pyghon por vim-polyglot.
let g:python_highlight_space_errors = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

lua << EOF
require("nvim-autopairs").setup({})
EOF

function! DetectSystemAppearance()
  let l:appearance = trim(system("defaults read -g AppleInterfaceStyle 2>/dev/null && echo dark || echo light"))
  "echom "🌗 Valor de l:appearance = " . l:appearance
  colorscheme default
  if match(l:appearance, 'dark') >= 0
    echom "🌗 se ha cargado modo dark: 🌙" 
    set background=dark
  else
    "echom "🌗 se ha cargado modo light: ☀️" 
    set background=light
  endif
endfunction

" Detectar tema lo antes posible
call DetectSystemAppearance()

