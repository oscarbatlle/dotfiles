" ##################################
" || Author: Oscar Batlle         ||
" || Email: oscarbatlle@gmail.com ||
" || Blog: http://oscarbatlle.com ||
" ##################################

" True colors support ( neovim 0.1.5 )
set termguicolors
" Enable filetype
filetype plugin on
"Set encoding type to show glyphs
set encoding=utf8
"Fix statline
if exists("g:loaded_statline_plugin")
  finish
endif
"neo vim mouse support
if !has('nvim')
    set ttymouse=xterm2
endif
let g:loaded_statline_plugin = 1
"Set fancy symbols for powerline and airline
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
"I want to copy to the clipboard ;).
set clipboard=unnamed
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
"Automatically write the file when switching buffers. 
set autowriteall
"Set desired autocompletion
set complete=.,w,b,u
"Tabs, Indents and Spaces
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
"-------------------Visuals--------------------"
"Use 256 colors.
"set t_CO=256
set background=dark
"Set Scheme Color.
"colorscheme atom-dark-256 
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_vert_split = 'bg2'
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
highlight FoldColumn guibg=none guifg=none
hi foldcolumn ctermbg=none
"Set color for vertical bar / No borders.
hi vertsplit ctermbg=bg ctermfg=bg
"Enable status/tabline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
" Select color
hi Visual guifg=none guibg=#5c4d3d gui=none
"--------------------Search--------------------"
"Highlight Search
set hlsearch
"Incremental Search
set incsearch
"--------------------Indent--------------------"
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indentLine_color_term = 239
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
"/set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
"/
"/ phpunit
"/
nmap ,t :!clear & phpunit %<cr>
nmap ,m yiw:!phpunit --filter "<cr>
"/
"/ pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>
"/
"/ Utilsnips
"/
let g:UltiSnipsSnippetsDir = "~/.vim/snippets"
let g:UltiSnipsSnippetDirectories=["~/.vim/snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"/ NERDTree
"/
"Avoid Vinegar conflicts.
let NERDTreeHijackNetrw = 0
"Make NERDTree easier to toggle.
nmap <C-d> :NERDTreeToggle<cr>
"Display hidden files
let NERDTreeShowHidden=1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#282828')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#282828')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#282828')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#282828')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#282828')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#282828')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#282828')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#282828')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#282828')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#282828')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#282828')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#282828')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#282828')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#282828')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#282828')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#282828')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#282828')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#282828')
"Remove Nerdtree vertical split
set fillchars+=vert:\ 
hi VertSplit guibg=bg guifg=bg
"--------------Git-Fugitive---------------------"
nmap <Leader>ga :Gwrite<cr>
nmap <Leader>gst :Gstatus<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gd :Gdiff<cr>
"--------------------Tabular--------------------"
" Align equal signs and colons
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
"--------------------Syntax---------------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"---------------------CTAGS---------------------"
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"/
"/ Greplace.vim
"/
"I want to use 'Ag' for the Search ;).
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
"/
"/ vim-php-cs-fixer.vim
"/
" Automatic PSR-2 Formatting
" NOTE: Requirements (php-cs-fixer) -> composer global require fabpot/php-cs-fixer
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer.phar"
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><Leader>l :call PhpCsFixerFixFile()<CR>
nnoremap <silent><leader>la :call PhpCsFixerFixDirectory()<CR>
"Avoid replacing App with app (Laravel)
let g:php_cs_fixer_fixers_list = "-psr0"
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
"Initialize Fields
let @a="yiw/}O		$	pa = $pa;?constructOprotected $pa;/construct/\", "
"----------------Auto-Commands-----------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

function! IPhpInsertUse()
	    call PhpInsertUse()
	        call feedkeys('a',  'n')
	endfunction
	autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
	autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>
	
function! IPhpExpandClass()
	    call PhpExpandClass()
	    call feedkeys('a', 'n')
	endfunction
	autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
	autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>'" }'"
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
"/
"/ Add use namespace
"/
"NOTE: <Leader>n will import the class in NORMAL/INSERT mode.
"NOTE: <Leader>nf will import the fully qualify class.
"NOTE: Order by Length -> Select all of the classes with VISUAL MODE and
"<Leader>su
"/
"/ Emmet
"/
" Html5 = html:5 then type <c-y>, (Ctrly,)
