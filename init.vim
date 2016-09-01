call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'flowtype/vim-flow', { 'for': 'javascript', 'on': 'FlowToggle' }
Plug 'kern/vim-es7', { 'for': 'javascript' }

call plug#end()

filetype on
filetype plugin on
filetype indent on
syntax on

set number
set showcmd
set tabstop=2
set softtabstop=2
set expandtab
set nobackup
set nowritebackup
set noswapfile
set colorcolumn=81
set autoread
set title
set ignorecase
set smartcase
set shiftwidth=2
set autoindent

set t_co=256
colorscheme solarized
set background=dark

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let mapleader = ","

imap jk <Esc>

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

map  <up>    <nop>
map  <down>  <nop>
map  <left>  <nop>
map  <right> <nop>
imap <up>    <nop>
imap <down>  <nop>
imap <left>  <nop>
imap <right> <nop>

nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap < <gv
vnoremap > >gv

map <c-s> :set hlsearch!<CR>

""
" ctrlp setup
"

" exit
let g:ctrlp_prompt_mappings = { 'PrtExit()': [ '<c-q>', '<c-c>' ] }

" open buffer
map <c-a> <esc>:CtrlPBuffer<CR>

" ignore folder
let g:ctrlp_custom_ignore = '\v[\/]\.git$'
let g:ctrlp_custom_ignore = '\v[\/](vendor|node_modules)$'

""
" vim-jsx setup
"

" no required .jsx extension
let g:jsx_ext_required = 0

""
" nerdtree setup
"

" open/hide nerdtree
map <C-n> :NERDTreeToggle<CR>

""
" deoplete
"

let g:deoplete#enable_at_startup=1

""
" Clear white space in end line
"

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

""
" Remove trailing white space
"

autocmd BufWritePre *.js :%s/\s\+$//e

"""
" Disable typechecking on :w (Flow)
"

let g:flow#enable = 0
