filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"-------------Navigation-------------
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
"--------Auto-Close-Brackets---------
Plugin 'jiangmiao/auto-pairs'
"---------Super-Fast-Search----------
Plugin 'rking/ag.vim'
"---------Search-And-Replace---------
Plugin 'skwp/greplace.vim'
"--------------Snippets--------------
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"-Quoting/Parenthesizing made simple-
Plugin 'tpope/vim-surround'
"------------PHP-Syntax--------------
Plugin 'StanAngeloff/php.vim'
"--------Javascript-Syntax-----------
Plugin 'pangloss/vim-javascript'
"------Insert-Use-Statements---------
Plugin 'vim-php-namespace'
"----------Auto-Completion-----------
"Plugin 'ervandew/supertab'
"-----------Automatic-PSR-2----------
Plugin 'stephpy/vim-php-cs-fixer'
"--------------Airlines--------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"----------------Git-----------------
Plugin 'tpope/vim-fugitive'
"--------------Tabular---------------
Plugin 'godlygeek/tabular'
"---------------Emmet----------------
Plugin 'mattn/emmet-vim'
"---------------Indent---------------
Plugin 'yggdroot/indentline'
"---------------Solarized------------
Plugin 'morhetz/gruvbox'
"---------------Icons----------------
Plugin 'ryanoasis/vim-devicons'
"---------------tobyS----------------
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
"-------------ultisnips--------------
Plugin 'Sirver/ultisnips'
"----------NERD-Commenter------------
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
