" ┍------------------------------┑
" | Author: Oscar Batlle         |
" | Email: oscarbatlle@gmail.com |
" | Blog: http://oscarbatlle.com |
" ┕------------------------------┙

"Enable syntax highlighting.
syntax enable
"Enable delete key on insert mode.
set backspace=indent,eol,start
"The default mapleader is '\' but a comma ',' is much better ;).
let mapleader = ','
"Let's active line numbers.
set number
"-------------------Visuals--------------------"
"Set Scheme Color.
colorscheme atom-dark-256 
"Use 256 colors.
set t_CO=256
"Macvim-specific line-height.
set linespace=15
"Set gui font.
set guifont=Fira_Code:h13
"Remove scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"--------------------Search--------------------"
"Highlight Search
set hlsearch
"Incremental Search
set incsearch
"---------------Split Management---------------"
"Set Horizontal Split Below.
set splitbelow
"Set Vertical Split to the Right.
set splitright
"Set Mappings to Navigate Splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
"-------------------Mappings-------------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Add simple Search Highlight removal.
nmap <Leader><space> :nohlsearch<cr>
"----------------Auto-Commands-----------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
