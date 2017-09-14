set nocompatible

" --- General settings ---

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a
set clipboard=unnamed

syntax on
filetype off

" --- Vundle ---

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" --- Vundle Plugins ---

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Start Screen
Plugin 'mhinz/vim-startify'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup = 1

" Airline/Extensions
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-bufferline'

" Polyglot
Plugin 'sheerun/vim-polyglot'

" Autocomplete
Plugin 'ervandew/supertab'

" Sexy Scrolling
Plugin 'joeytwiddle/sexy_scroller.vim'
let g:SexyScroller_EasingStyle = 2

" --- Vundle Themes --

Plugin 'tomasr/molokai'
let g:rehash256 = 1

" --- End Vundle ---
call vundle#end()
filetype plugin indent on

" --- Color Scheme ---
colorscheme molokai

" --- Keymaps ---
nnoremap <C-W> :q<CR>
tnoremap <Esc> <C-\><C-n>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>

" ctrl-f / ctrl-b : scroll down/up

" --- Cursor Style Change (Gnome Terminal)

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
    au InsertEnter,InsertChange *
        \ if v:insertmode == 'i' | 
        \   silent execute '!echo -ne "\e[5 q"' | redraw! |
        \ elseif v:insertmode == 'r' |
        \   silent execute '!echo -ne "\e[3 q"' | redraw! |
        \ endif
      au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

