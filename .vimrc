"Vundle"
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"required
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'
Bundle 'msanders/snipmate.vim'
Bundle 'kevinw/pyflakes-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'samsonw/vim-task'


filetype on
syntax on
filetype plugin indent on

"Color scheme"
set t_Co=256
let g:molokai_original = 1
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
call togglebg#map("<F2>")

" Python run
" F5 checks pep8
au BufEnter *.py nmap <F6> :w<CR>:!time python "%"<CR>
au BufEnter *.py nmap <F8> :w<CR>:Pytest file<CR>
au BufEnter *.py nmap <F9> :w<CR>:!python -m doctest %<CR>

" F4: Switch on/off Tagbar
let g:tagbar_usearrows = 1
nnoremap <silent> <F4> :TagbarToggle<CR>

"Gundo
nnoremap <F10> :GundoToggle<CR>
let g:gundo_width = 30
let g:gundo_preview_height = 30

set encoding=utf8       " Set encoding UTF-8
set textwidth=80        " Set textwidth
set hlsearch            " Highlight search enable
set cursorline          " Cursor line
set directory=~/.tmp    " Set temp directory
set autoindent          " Auto indent
set pastetoggle=<F3>    " Paste mode switch
set showcmd             " Show commands
set hidden              " Undo history save when changing buffers
set number              " Line number enable
set numberwidth=1       " Line number width

"*** Statusbar ***{{{1
set laststatus=2 
set statusline=[%n]
set statusline+=%<%F
set statusline+=%m 
set statusline+=%r 
set statusline+=%w 
set statusline+=[%{&fileformat}] 
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}] 
set statusline+=%y 
set statusline+=%= 
set statusline+=[ASCII=%B] 
set statusline+=[COL=%c,L=%l/%L] 
set statusline+=[%p%%] 
"}}}1

"Tabstop"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap
set expandtab

"folding
"
set foldmethod=indent
set foldlevel=99

"key mapping
"
let mapleader=','
let g:mapleader=','
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>
nmap <Leader>bd :bd<cr>
map <right> :bn<cr>
map <left> :bp<cr>
nmap <Leader>cv :!cat % \| xclip -i -selection clipboard<cr>
nnoremap <space> za
inoremap jj <esc>

nmap <Leader>c :nohlsearch<cr>

"Window map
nnoremap <Leader>v <C-w>

"*** NERDtree ***{{{1
let g:NERDTreeQuitOnOpen = 1
let NERDTreeIgnore = ['\.pyc$', '\~$']
let NERDTreeShowHidden=1
autocmd vimenter * if !argc() | NERDTree | endif
nmap <silent> <c-n> :NERDTreeToggle<CR>
"}}}1

