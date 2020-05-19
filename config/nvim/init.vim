"""""" neovim-plug settings

call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'mhinz/vim-startify'
Plug 'mgee/lightline-bufferline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" deliminate deoplete nerdcomenter nerdtree

call plug#end()

" tmp
let g:go_version_warning = 0

"""""" colors
"set termguicolors
let g:nord_italic = 1
let g:nord_cursor_line_number_background = 1
let g:nord_comment_brightness = 10
colorscheme nord

set mouse=a
set number
set cursorline
set showtabline=2
set clipboard+=unnamedplus
set ts=4
set sw=0

" Lightline 
set noshowmode 				" Hide mode because Lightline handles it 
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'separator': {
      \   'left': '', 
      \   'right':''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \ }

" Integrate lightline-bufferline with lightline
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" Lightline settings
let g:limelight_conceal_ctermfg = 008

" moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

":inoremap ( ()<Esc>i
":inoremap [ []<Esc>i
":inoremap { {}<Esc>i<Return><Esc>O
":inoremap " ""<Esc>i
":inoremap ' ''<Esc>i

" settings for GNU c formatting in vim
"setlocal tabstop=8
"setlocal shiftwidth=2
"setlocal softtabstop=2
"setlocal noexpandtab
