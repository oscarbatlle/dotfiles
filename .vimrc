" ┍------------------------------┑
" | Author: Oscar Batlle         |
" | Email: oscarbatlle@gmail.com |
" | Blog: http://oscarbatlle.com |
" ┕------------------------------┙

"I want the latest Vim settings/options ;).
set nocompatible
"Set plugins directory
so ~/.vim/plugins.vim
"Enable syntax highlighting.
syntax enable
"Enable delete key on insert mode.
set backspace=indent,eol,start
"The default mapleader is '\' but a comma ',' is much better ;).
let mapleader = ','
"Disable line numbers.
set nonumber
"Turn off the Error Bell
set noerrorbells visualbell t_vb=
"-------------------Visuals--------------------"
"Set Scheme Color.
colorscheme atom-dark-256 
"Use 256 colors.
set t_CO=256
"Macvim-specific line-height.
set linespace=15
"Set gui font.
set guifont=Fira_Code:h13
"Set background color for line numbers.
highlight LineNr ctermfg=grey ctermbg=bg
"Remove scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"I don't want Gui tabs :@.
set guioptions-=e
"Set left padding.
set foldcolumn=2
hi foldcolumn ctermbg=bg
"Set color for vetical bar / No borders.
hi vertsplit ctermbg=bg ctermfg=bg
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
"Make it easy to edit snippets.
nmap <Leader>es :e ~/.vim/snippets/
"Add simple Search Highlight removal.
nmap <Leader><space> :nohlsearch<cr>
"Find a Tag.
nmap <Leader>f :tag<space>
"-------------------Plugins--------------------"
"/
"/ CtrlP
"/
"List the files to ignore.
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
"Make it easier to navigate with CtrlP.
nmap <C-R> :CtrlPBufTag<cr>
"List of recently used files.
nmap <C-e> :CtrlPMRUFiles<cr>
"/
"/ NERDTree
"/
"Avoid Vinegar conflicts.
let NERDTreeHijackNetrw = 0
"Make NERDTree easier to toggle.
nmap <C-d> :NERDTreeToggle<cr>
"/
"/ Greplace.vim
"/
"I want to use 'Ag' for the Search ;).
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
"----------------Laravel-Specific--------------"
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lc :e config/app.php<cr>
nmap <Leader>le :e .env<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader>lfc :CtrlP<cr>app/Http/Controllers/
nmap <Leader>lfj :CtrlP<cr>app/Jobs/
nmap <Leader>lfm :CtrlP<cr>app/
nmap <Leader>lfv :CtrlP<cr>resources/views/
nmap <Leader><Leader>v :e resources/views/<cr>
"----------------Auto-Commands-----------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"-------------------Notes-Tips-----------------"
"/
"/ CTAGS
"/
"ctags -R -> Generate tags for a particular project.
"NOTE: Add tags/ to your .gitignore file.
"CTRL + ] -> Takes you to where the method was defined.  
"CTRL + ^ -> Previous edited location.
"/
"/ Reminders
"/
"Press 'zz' to instantly center the line where the cursor is located.
"GSearch to search really fast.
"%s/pattern/replace -> Find and replace.
"Greplace -> Replace in all of the files.
"/
"/ Surrounding
"/
"Change surrounding e.g.: cs ' " to change single quotes to double quotes
"Delete surrounding e.g: ds ( to delete the surrounding ()
"[HTML]Delete surrounding tag e.g: dst will delete the surrounding tag
"[HTML]Change surrounding tag e.g: cst will change the surrounding tag
"[HTML]Add surrounding tag e.g: (Select all with Visual Mode) + S + yourtag
