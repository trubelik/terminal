" VimPlug
" Source: https://github.com/junegunn/vim-plug
" Description: Automatic download and update of plugins.
call plug#begin('~/.vim/plugged')

" Base16 - shell - vim
" Source: https://github.com/chriskempson/base16-vim
" Requires: https://github.com/chriskempson/base16-shell
" Description: Sync colors in terminal.
Plug 'chriskempson/base16-vim'

" Lightline
" Source: https://github.com/itchyny/lightline.vim
" Description: Light version of status bar.
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'

call plug#end()


" Base sets
" Description: encodings, colors, mouse...
syntax on
set encoding=UTF-8
set t_Co=256
set cursorline
set nu
set mouse=a
set so=10
set tabstop=4
set shiftwidth=4
set expandtab
let g:loaded_matchparen=1
set noshowmode

" Plugin: Lightline
set showtabline=0
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'base16',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'fileencoding' ],
      \              [ 'filetype' ] ]
      \ }
    \ }

" Plugin: Git Gutter
set signcolumn=yes

" Key: Switching tabs
nmap <TAB> <C-w><C-w>

" Base16 - auto background
" Description: Sync with terminal settings
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Removes underline
hi CursorLineNr cterm=NONE
