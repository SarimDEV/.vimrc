syntax on

set belloff=all
"tab-sizes
filetype plugin indent on
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

set splitright
set hls
set ignorecase
set cul
set number
set relativenumber
set nowrap
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set smartindent
set incsearch
set scrolloff=8

"improvement to help typescript
set re=0

"give more space for displaying messages.
set cmdheight=2
set updatetime=750

"set column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"display statusline
set laststatus=2
set title

set clipboard=unnamed

call plug#begin('~/.vim/plugins')
  Plug 'sheerun/vim-polyglot'
  Plug 'prettier/vim-prettier'
  Plug 'morhetz/gruvbox'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'w0rp/ale'
  Plug 'preservim/nerdtree'
  Plug 'leafgarland/typescript-vim'
call plug#end()

"ale config
let g:ale_enabled = 0
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {  'typescript': ['prettier']}
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_fix_on_save = 0

colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif  

"let g:netrw_browse_split = 2
let g:netrw_banner = 0
"let g:netrw_winsize = 25
let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"CSS autocompletion
autocmd FileType css set omnifunc=csscomplete

let mapleader = " "

"coc plugin
nmap <leader>gd <Plug>(coc-definition)
"nmap <leader>gr <Plug>(coc-references)
"
"prettier
nmap <Leader>py <Plug>(Prettier)

"remap for line movement
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"remap Esc
inoremap jjj <Esc>
inoremap lll <Esc>
inoremap hhh <Esc>
inoremap kkk <Esc>

"remapping for NERDTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>
