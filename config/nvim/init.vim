" ------------------
" |    Vim-Plug    |
" ------------------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'kovetskiy/sxhkd-vim'
"TODO vim-startify vim-go deliminate deoplete nerdcomenter nerdtree vim-gugitive lightline-bufferline?

call plug#end()

" ----------------
" |    Colors    |
" ----------------
set termguicolors
let g:nord_italic = 1
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
colorscheme nord

" -----------------
" |    General    |
" -----------------
set mouse=a
set clipboard+=unnamedplus "(needs clipboard-tool)
set number
set cursorline
set showtabline=2
set ts=4
set sw=0

" ------------------
" |    Keybinds    |
" ------------------

" moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ----------------------
" |    Plugin Config   |
" ----------------------

" Lightline
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'nord',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
	\   'right': [ [ 'lineinfo'],
	\              [ 'percent' ],
	\              [ 'empty', 'fileencoding', 'filetype' ] ]
	\ },
	\ 'component': {
	\	'empty': ' '
	\},
	\ 'component_function': {
	\   'gitbranch': 'gitbranch#name'
	\ },
	\ 'separator': {
	\   'left': '', 
	\   'right':''
	\ },
	\ 'subseparator': {
	\   'left': '',
	\   'right': ''
	\ },
	\ }
