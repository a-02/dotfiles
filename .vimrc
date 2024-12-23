set number
set noautoindent
set background=dark
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set number ruler
set backupcopy=yes
colorscheme disco
syntax on
filetype plugin indent on

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'wookayin/fzf-ripgrep.vim'

call plug#end()

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> kk <C-o>
nmap <silent> ii <C-i>

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

