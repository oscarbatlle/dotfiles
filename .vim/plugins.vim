filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"-------------Navigation-------------
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"--------Auto-Close-Brackets---------
Plugin 'jiangmiao/auto-pairs'
"---------Super-Fast-Search----------
Plugin 'rking/ag.vim'
"---------Search-And-Replace---------
Plugin 'skwp/greplace.vim'
"--------------Snippets--------------
Plugin 'msanders/snipmate.vim'
"-Quoting/Parenthesizing made simple-
Plugin 'tpope/vim-surround'
"------------PHP-Syntax--------------
Plugin 'StanAngeloff/php.vim'
"------Insert-Use-Statements---------
Plugin 'vim-php-namespace'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
