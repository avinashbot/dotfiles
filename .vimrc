" --- General settings ---

set nocompatible
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set hidden
set noshowmode
set splitbelow
set splitright
set undofile
set mouse=a
set clipboard=unnamedplus
set whichwrap+=<,>,h,l,[,]
set backupdir=~/.vim/tmp//
set undodir=~/.vim/tmp//
set directory=~/.vim/tmp//

syntax on
filetype off

" --- Vundle ---

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" --- Plugins ---

Plugin 'VundleVim/Vundle.vim'             " Vundle to enable plugin support.
Plugin 'editorconfig/editorconfig-vim'    " Support .editorconfig files.
Plugin 'tpope/vim-sleuth'                 " Auto-detect indentation.
Plugin 'mhinz/vim-startify'               " Start screen.
Plugin 'ap/vim-buftabline'                " Tab-line (using buffers).
Plugin 'airblade/vim-gitgutter'           " Git markers in gutter.
Plugin 'itchyny/lightline.vim'            " Statusbar with Git integration.
Plugin 'scrooloose/nerdtree'              " File viewer.
Plugin 'Xuyuanp/nerdtree-git-plugin'      " Git markers for NERDTree.
Plugin 'sheerun/vim-polyglot'             " Syntax highlighting.
Plugin 'vim-syntastic/syntastic'          " Syntax checking.
Plugin 'ervandew/supertab'                " Intelligently map OmniComplete to Tab.
Plugin 'junegunn/fzf'                     " Fuzzy Search.
Plugin 'junegunn/fzf.vim'                 " Fuzzy Search + Vim.
Plugin 'altercation/vim-colors-solarized' " Theme for Vim.

" --- Plugins: Under Evaluation ---

Plugin 'Shougo/denite.nvim'

" --- Plugins: Language Support ---

Plugin 'Quramy/tsuquyomi' " Typescript

" NERDTree
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
autocmd VimEnter * if !argc() | Startify | NERDTree | wincmd w | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree + Git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "!",
    \ "Staged"    : "+",
    \ "Untracked" : "~",
    \ "Renamed"   : "-",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "x",
    \ "Dirty"     : "!",
    \ "Clean"     : "",
    \ 'Ignored'   : ':',
    \ "Unknown"   : "?"
    \ }

" buftabline
let g:buftabline_indicators=1

" Lightline
let g:lightline = { 'colorscheme': 'wombat' }

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_shortest_import_path = 1
let g:syntastic_typescript_checkers = ['tslint --type-check', 'tsuquyomi']
autocmd FileType typescript setlocal completeopt+=menu,preview

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabCrMapping = 1

" --- End Vundle ---
call vundle#end()
filetype plugin indent on

" --- Colorscheme ---
set background=dark
colorscheme solarized

" --- Keymaps ---
nmap <C-W> :bp<cr>:bd #<cr>
nmap <C-N> :Startify<cr>
nmap <C-P> :FZF<cr>

map <silent> <A-Up> :wincmd k<CR>
map <silent> <A-Down> :wincmd j<CR>
map <silent> <A-Left> :wincmd h<CR>
map <silent> <A-Right> :wincmd l<CR>

nmap <Tab> :bnext<cr>
nmap <S-Tab> :bprevious<cr>

