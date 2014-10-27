" Only if running under MacVIM
if has("gui_running")
	" remove the toolbar
	set guioptions=egmrt

	" set the transparency
	set transparency=75

	" set the default syntax to perl
	cal SetSyn("perl")
endif

" set tab size
set ts=4

" enable syntax
syntax on

set autoindent
set smartindent

filetype off
" make plugins run from subfolders in bundle folder via pathogen.vim
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
filetype on 
filetype plugin indent on 

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" default color scheme
colorscheme kraihlight

" ctrl+tab for next tab
noremap <c-tab> :tabnext<cr>
" use Alt-Left and Alt-Right to move current tab to left or right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" use visual bell instead of beeping
set vb

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1
let perl_fold_blocks=1

"set backup and working directory to ~/.vim/ (to speed up work over ssh)
set backupdir=~/.vim/swap/
set directory=~/.vim/swap/

cd ~/Dropbox/Projects/

" zoom the default font
set guifont=Menlo\ Regular:h15

"self explanator
set nowrap

" show numbers on left width select color
set number
highlight LineNr guifg=DarkGrey

" prefer a slightly higher line height  
set linespace=3

"Highlight searching  
set hlsearch

" case insensitive search  
set ignorecase
set smartcase

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=1         "this is just what i use

"perl keyword lookup by 'K' key on the function name
set keywordprg=perldoc\ -f


au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"preload contents for new files from templates
autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.template
