
filetype on
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

syntax enable
set background=dark
colorscheme Tomorrow-Night

set nocompatible

set modelines=0
set listchars+=trail:░

set guifont=Menlo:h18
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set wildignore+=*.swp,*.un~,tmp/**,*DS_Store*,coverage/*,.keep,_build/**,deps/**,node_modules/**

"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
"call vam#ActivateAddons(['powerline'])
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

nnoremap ; :
au FocusLost * :wa
" au InsertLeave * :%s=\s\+$==
autocmd FileType ruby,javascript,scss,coffee autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType ruby,javascript,scss,coffee autocmd BufWritePre * :%s/\t/  /e
match ErrorMsg '\s\+$'

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ft Vatzf
nnoremap <leader>ff gg=G
nnoremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>fl :CommandTFlush
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>new<C-w>l
nnoremap <leader>mv <C-w>H
nnoremap <leader>mh <C-w>K
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader><leader> :ZoomWin<CR>
map <leader>cc :Rcontroller
map <leader>mm :Rmodel
map <leader>vv :Rview

" Yank to clipboard
vmap <C-c> "+y

nnoremap <leader>rtm :!bundle exec rake test:models
nnoremap <leader>rtc :!bundle exec rake test:controllers
nnoremap <leader>rtf :!bundle exec rake test:integration

imap <C-l> <Space>=><Space>

nmap <c-w> :w<CR>
vmap <c-w> <Esc><c-w>gv
imap <c-w> <Esc><c-w>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Tabularize
if exists(":Tabularize")
    nmap <leader>b= :Tabularize /=<CR>
    vmap <leader>b= :Tabularize /=<CR>
    nmap <leader>b: :Tabularize /:\zs<CR>
    vmap <leader>b: :Tabularize /:\zs<CR>
endif

" Easy Buffer
nmap <Leader>er :EasyBuffer<CR>

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nmap <C-b> <C-o>
nmap <C-m> <C-]>
nmap gb <C-t>

" Open alternate file in a vertical split
map <leader>av :AV<CR>
map <F3> :TlistToggle<cr>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE> -i

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"

autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufRead,BufNewFile *.*.jsx setfiletype javascript

nnoremap <leader>el :ElmEvalLine<CR>
vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>
