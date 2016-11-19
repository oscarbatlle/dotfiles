call plug#begin('~/.vim/plugged')
"-------------Navigation-------------
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
"--------Auto-Close-Brackets---------
Plug 'jiangmiao/auto-pairs'
"---------Super-Fast-Search----------
Plug 'rking/ag.vim'
"---------Search-And-Replace---------
Plug 'skwp/greplace.vim'
"--------------Snippets--------------
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"-Quoting/Parenthesizing made simple-
Plug 'tpope/vim-surround'
"------------PHP-Syntax--------------
Plug 'StanAngeloff/php.vim'
"--------Javascript-Syntax-----------
Plug 'pangloss/vim-javascript'
"------Insert-Use-Statements---------
Plug 'vim-php-namespace'
"----------Auto-Completion-----------
"Pluginin 'ervandew/supertab'
"-----------Automatic-PSR-2----------
Plug 'stephpy/vim-php-cs-fixer'
"--------------Airlines--------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"----------------Git-----------------
Plug 'tpope/vim-fugitive'
"--------------Tabular---------------
Plug 'godlygeek/tabular'
"---------------Emmet----------------
Plug 'mattn/emmet-vim'
"---------------Indent---------------
Plug 'yggdroot/indentline'
"---------------Solarized------------
Plug 'morhetz/gruvbox'
"---------------Icons----------------
Plug 'ryanoasis/vim-devicons'
"---------------tobyS----------------
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
"-------------ultisnips--------------
Plug 'Sirver/ultisnips'
"----------NERD-Commenter------------
Plug 'scrooloose/nerdcommenter'
"-----------Autocomplete-------------
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/deoplete-typescript'
"------------tsc-syntax-------------
Plug 'HerringtonDarkholme/yats.vim'
"------------easy-align-------------
Plug 'junegunn/vim-easy-align'
"-------------neo-make--------------
Plug 'neomake/neomake'
"----------tmux-clipboard-----------
Plug 'roxma/vim-tmux-clipboard'
"----------Syntax-Libraries---------
Plug 'othree/javascript-libraries-syntax.vim'
call plug#end()            " required
