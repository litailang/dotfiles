set tabstop=4
set nocompatible
set clipboard=unnamed,autoselect
set number
set ignorecase
set smartcase
set noincsearch
set nowrapscan
set noexpandtab
set autoindent
set backspace=2
set showmatch
set wildmenu
set ruler
set list
set laststatus=2
set cmdheight=1
set showcmd
set title
set hlsearch
set nosmartindent
set scrolloff=2
"set directory=/tmp
set nobackup
"set backupdir=/tmp
set history=100
syntax on
highlight Comment ctermfg=DarkCyan
set wildmenu
set wrap
set textwidth=0
set encoding=utf-8
set fileencodings=iso-2022-jp,sjis,utf-8,euc-jp
set hidden

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

filetype on
filetype indent on

nmap <Space>b :ls<CR>:buffer 
nmap <Space>f :edit .<CR>
nmap <Space>v :vsplit<CR><C-w><C-w>:ls<CR>:buffer
nmap <Space>h <C-w>h
nmap <Space>j <C-w>j
nmap <Space>k <C-w>k
nmap <Space>l <C-w>l
