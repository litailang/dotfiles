set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

set nocompatible
set clipboard=unnamed,autoselect
set number
set ignorecase
set smartcase
set noincsearch
set nowrapscan
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
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp
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


" NeoBundle がインストールされていない時、
" もしくは、プラグインの初期化に失敗した時の処理
function! s:WithoutBundles()
  colorscheme desert
  " その他の処理
endfunction

" NeoBundle よるプラグインのロードと各プラグインの初期化
function! s:LoadBundles()
  " 読み込むプラグインの指定
  NeoBundle 'Shougo/neobundle.vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'w0ng/vim-hybrid'
  NeoBundle 'nanotech/jellybeans.vim'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'ujihisa/unite-colorscheme'
  NeoBundle 'tomasr/molokai'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'derekwyatt/vim-scala'
  NeoBundle 'scrooloose/nerdtree'
  " ...
  " 読み込んだプラグインの設定
  " ...
endfunction

" NeoBundle がインストールされているなら LoadBundles() を呼び出す
" そうでないなら WithoutBundles() を呼び出す
function! s:InitNeoBundle()
  if isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    filetype plugin indent off
    if has('vim_starting')
      if &compatible
        set nocompatible               " Be iMproved
      endif
      set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif
    try
      call neobundle#begin(expand('~/.vim/bundle/'))
      call s:LoadBundles()
      call neobundle#end()
    catch
      call s:WithoutBundles()
    endtry 
  else
    call s:WithoutBundles()
  endif

  filetype indent plugin on
  NeoBundleCheck
  syntax on
endfunction

call s:InitNeoBundle()

colorscheme jellybeans

autocmd FileType javascript setlocal includeexpr=substitute(v:fname,'$','.js','') | setlocal path+=;/

