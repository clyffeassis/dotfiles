call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden

set number
set relativenumber
set termguicolors

set mouse=a

set inccommand=split
set clipboard=unnamed
set expandtab
set shiftwidth=4
set tabstop=8     
set autoindent   
set smartindent 
set cindent    
set foldmethod=syntax
set nofoldenable
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <F3> :NERDTreeToggle<cr>
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:ycm_global_ycm_extra_conf = '$HOME/.config/nvim/ycm_extra_conf/ycm_extra_conf.py'
