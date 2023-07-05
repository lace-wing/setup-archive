" indent
set tabstop=4
set noexpandtab
set softtabstop=4
set shiftwidth=4
set smarttab
" since here the vim is not using a plugin manager
filetype plugin indent on

" tbw
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap to :tabonly<CR>
nnoremap tm :tabnext<CR>

" editing
set backspace=indent,start,eol
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" syntax
syntax enable

" backup
set directory=$HOME/Documents/.vim/backup
set undodir=$HOME/Documents/.vim/backup
set backupdir=$HOME/Documents/.vim/backup

" display
set number
set relativenumber
set wrap
set linebreak
syntax on

" search
set ignorecase
set nohls
set smartcase

" clipboard
" set clipboard=unnamedplus

" window
set splitbelow
set splitright

" nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" vim-markdown
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 0

" everforest
if has('termguicolors')
	set termguicolors
endif
" For dark version.
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'
" For better performance
let g:everforest_better_performance = 1

" color scheme
colorscheme everforest

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
