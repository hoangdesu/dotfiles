" ===== HOANG NGUYEN's CUSTOM NEOVIM CONFIGURATIONS =====


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- SETS -----
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin on
set nu relativenumber			" relative line number
set termguicolors				" enables true color in terminal
set cursorline					" highlights current line
set expandtab					" TABS MAKE MORE MONEY THAN SPACES!
set tabstop=4 softtabstop=4		" tab = 4space 
set smartindent
set autoindent
set shiftwidth=4
set mouse=a						" allow scrolling with the mouse, a=all modes
set scrolloff=8
set hidden						" hide the buffer instead of abandon it
set noerrorbells				" fuk bell noise
set ignorecase					" ignore case when search by default
set smartcase					" perform a case sensitive search with capitalized letters
set noswapfile
set nobackup					" recommended by coc	
set nowritebackup				" recommended by coc
set splitbelow					" horizontal split will go below current buffer
set splitright					" vertical split will go to the right of current buffer
set undodir=~/.config/nvim/undodir
set undofile					" works well with undo tree
set incsearch					" incremental search
set signcolumn=yes				" great for linting
" set cmdheight=2					" give more space for displaying command messages
set noshowmode					" hides duplicated show mode
set ruler
set encoding=UTF-8
set background=dark
set updatetime=300				" faster completion
" set paste						" disable auto comment, also will break autoindent :(
set wildmode=longest,list,full	" autocompletion

"====================================================================="




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- VIM PLUG -----
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/autoload/plugged')

	" Aesthetics	
	Plug 'artanikin/vim-synthwave84'
	Plug 'morhetz/gruvbox'
	Plug 'tomasiser/vim-code-dark'
	" Plug 'vim-airline/vim-airline'
	" Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'kaicataldo/material.vim', { 'branch': 'main' }
	Plug 'rakr/vim-one'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'gosukiwi/vim-atom-dark'
	Plug 'itchyny/lightline.vim'
	Plug 'voldikss/vim-floaterm'
	Plug 'luochen1990/rainbow'
	
	" Utilities
	Plug 'preservim/nerdcommenter'								" NERDCommenter
	Plug 'liuchengxu/vim-which-key'								" WhichKey
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }			" Fuzzy Finder
	Plug 'mattn/emmet-vim'										" Emmet
	Plug 'jiangmiao/auto-pairs'									" Autopairs
	Plug 'preservim/nerdtree'									" Directory listing
	Plug 'AndrewRadev/tagalong.vim'
	Plug 'alvan/vim-closetag'
	Plug 'dense-analysis/ale'
	Plug 'tpope/vim-surround'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plug 'mbbill/undotree'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'sheerun/vim-polyglot'
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }	" Display colors in VIM
	Plug 'mhinz/vim-startify'
	Plug 'junegunn/goyo.vim'

	" Cóc :))
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

call plug#end()

"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- COLOR SCHEMES -----
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Tokyo night theme
" let g:tokyonight_style = 'night'	" available: night, storm
" let g:tokyonight_enable_italic = 1


" -> Material theme
" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
" let g:material_theme_style = 'darker-community'


" -> Set color scheme last to take effect
" colorscheme gruvbox
colorscheme synthwave84
" colorscheme codedark
" colorscheme tokyonight
" colorscheme material
" colorscheme one
" colorscheme dracula
" colorscheme atom-dark

"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- CUSTOM MAPPINGS ----- 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:mapleader = "\<Space>"			" Map Leader key to Space

" Ctrl-s or Space-w: save file
nnoremap <C-s>			:w<CR>					
nnoremap <leader>w		:w<CR>

" Space-q: save and quit
nnoremap <leader>q		:x<CR>	

" Remove search highlight with Esc x2 or Ctrl-C
nnoremap <silent> <Esc><Esc>	:nohlsearch<CR>
nnoremap <silent> <C-c>			:nohlsearch<CR>

" Source current init.vim file: Space-r
nnoremap <leader>so :so %<CR>

" Better window navigation
" :wincmd == <C-w>
nnoremap <C-h>	:wincmd h<CR>
nnoremap <C-j>	:wincmd j<CR>		
nnoremap <C-k>	:wincmd k<CR>
nnoremap <C-l>	:wincmd l<CR>

" Better tabbing, block still selected when tab until done
vnoremap < <gv
vnoremap > >gv

" Auto center when enter Insert mode
" autocmd InsertEnter * norm zz

"====================================================================="




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Airline */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Themes colection
" let g:airline_theme='synthwave84'
" let g:airline_theme='gruvbox'
" let g:airline_theme='codedark'
" let g:airline_theme = 'tokyonight'
" let g:airline_theme='one'

" -> Configs
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '>'

"====================================================================="




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* NERDCommenter */
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDCreateDefaultMappings = 1		" Create default mappings
let g:NERDSpaceDelims = 1				" Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1			" Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'			" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1			" Set a language to use its alternate delimiters by default
let g:NERDCommentEmptyLines = 1			" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1	" Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1		" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDCustomDelimiters = {
			\ 'c': { 
				\ 'left': '/**',
				\ 'right': '*/' 
				\ }
				\ }						" Add your own custom formats or override the defaults

" Space + / to toggle comment
nmap <Leader>/ <Plug>NERDCommenterToggle
vmap <Leader>/ <Plug>NERDCommenterToggle

"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* WhichKey */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press Space for 1 second to display hint
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

"====================================================================="


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Emmet */
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Auto complete Emmet with TAB <3 Only enable in HTML and CSS files
if &filetype =~ 'html\|css'
	let g:user_emmet_expandabbr_key='<Tab>'
	imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
endif


"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Lightline */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default shows row:column. Change to current row / total lines
let g:lightline = {
		\ 'colorscheme': 'powerline',
		\ 'component': {
			\   'lineinfo': "%{line('.') . '/' . line('$')}",
			\ },
		\ }
"====================================================================="




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* NERDTree */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Space-b: toggle file explorer. Keep it similar to cmd-b in VSCode
nnoremap <leader>b :NERDTreeToggle<CR>
" let g:NERDTreeWinPos = 'right'		" Open tree to the right

" Show directory listing by default 
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

" Close NERDTree with file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Fuzzy Finder */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Space-p: Fuzzy search
nnoremap <leader>p :FZF<CR>

" Default keybindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' 
  \ }
"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Rainbow Parentheses */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Conquer of Completion (CÓC) */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" let g:coc_global_extensions = [
"   \ 'coc-tsserver'
"   \ ]

"====================================================================="



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* UndoTree */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ut :UndotreeToggle<CR>
  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" /* Goyo */ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><leader>g :Goyo<CR>




"--- Some nice settings I might wanna try in the future ---
"
" set guicursor=				" cursor always remains as block
" set nohlsearch				" disable highlight search when enter
" set colorcolumn=80			" indicator line 
" set nowrap










