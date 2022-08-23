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
nnoremap <leader>s <C-w>s
" Cierra la divición.
nnoremap <leader>cw <C-w>c


" El Tema Gruvbox.
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=black
set laststatus=2
set noshowmode


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

"Mostando la linea del cursosr
nnoremap <Leader>cl :se cursorline<CR>
nnoremap <Leader>ncl :se nocursorline<CR>

"remplaznado el ctrl+y para seleccionar el item del menu del autocompletado
"por la tecla enter
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
"inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<TAB>"

"remplazando el moverse por el pop-menu de autocompletado con j y k
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

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


