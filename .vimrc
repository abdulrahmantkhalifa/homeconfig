set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"powerline alternate 
Plugin 'vim-airline/vim-airline'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"nerdTree
Plugin 'scrooloose/nerdtree'

"molokai
Plugin 'tomasr/molokai'

"unite search tool
Plugin 'Shougo/unite.vim'

"Shougo/neomru.vim, recent folders 
Plugin 'Shougo/neomru.vim'

"gitgutter
Plugin 'airblade/vim-gitgutter'

"syntax complete im assuming 
Plugin 'scrooloose/syntastic'

"colorscheme
Plugin 'chriskempson/base16-vim'

"autocomplete go-lang
Plugin 'fatih/vim-go'

"another autocomplete
Plugin 'Shougo/neocomplete.vim'

"autocomplete python
Plugin 'davidhalter/jedi-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"vim custom
" Better command-line completion
set wildmenu  
" Show partial commands in the last line of the screen
set showcmd
" Highlight searches (use <C-L> to temporarily turn off highlighting; see
set hlsearch
set visualbell
set mouse=a


""computer clipboard 
set clipboard=unnamedplus

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2
set number
"indentation
set shiftwidth=4
set softtabstop=4
set expandtab
syntax  on
set nuw=6
vnoremap // y/<C-R>"<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
"searching 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
 set ignorecase " case insensitive searching
 set smartcase " case-sensitive if expresson contains a capital letter
 set hlsearch
 set incsearch " set incremental search, like modern browsers
 set nolazyredraw " don't redraw while executing macros

 set magic " Set magic on, for regex
 set showmatch " show matching braces
 set mat=2 " how many tenths of a second to blink
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
"user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark
colorscheme molokai
let g:rehash256 = 1

set number

set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the satus line all the time
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin settings
"'""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""NERDTOGGLE;SETTIGNS
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" " Toggle NERDTree
nmap <F2> :NERDTreeToggle<cr>
" " expand to the path of the file in the current buffer
nmap <F3> :NERDTreeFind<cr>

"""UNITE;SETTINGS
"
nnoremap <Leader>' :<C-u>Unite  -buffer-name=search -start-insert file file_rec<cr><CR>
nnoremap <Leader>; :<C-u>Unite  -buffer-name=search_recent -start-insert file_mru<cr><CR>
nnoremap <Leader>p :<C-u>Unite  -buffer-name=tabs -start-insert buffer<cr><CR>

" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden
"
" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>= :enew<cr>
"
" " Move to the next buffer
nmap <leader>] :bnext<CR>
"
" " Move to the previous buffer
nmap <leader>[ :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>/ :bp <BAR> bd #<CR>

"""AIRLINE;SETTINGS
"" buffer thingy in airlline 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"the powerline shit u haveto do pip install --user powerline-status for it to
"work 
let g:airline_powerline_fonts = 3

"""NEOCOMPLETE;SETTINGS
"" cache complete
" Disable AutoComplPop
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
let g:neocomplete#enable_smart_case = 1

""""JEDI VIM 
""
""definition on left 
let g:jedi#use_splits_not_buffers = "right"


