"""""" neovim-plug settings

call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'mhinz/vim-startify'
Plug 'mgee/lightline-bufferline'
" deliminate deoplete nerdcomenter nerdtree

call plug#end()


"""""" colors
"set termguicolors
"let g:nord_italic = 1
"let g:nord_cursor_line_number_background = 1
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
