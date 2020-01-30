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

" Função para copiar e colar do clipboard do sistema 
set clipboard+=unnamedplus
function! ClipboardYank()
    call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('xclip -o -selection clipboard')
endfunction
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>
" -------------------------------------------------
"  Color scheme (Tema)
colorscheme gruvbox
set background=dark
" Permite abrir novos arquivos sem salvar anterior
set hidden
" numera linhas
set number
" numera relativamente
set relativenumber
set termguicolors
" Habilita mouse
set mouse=a
" Habilita split horizontal quando substituindo (%s)
set inccommand=split
" Configura tabulação e identação
set expandtab
set shiftwidth=4
set tabstop=8     
set autoindent   
set smartindent 
set cindent    
" Configura fold para casar com a sintaxe do codigo
set foldmethod=syntax
" Abre o arquivo sem dobrar (fold)
set nofoldenable
" Tecla leader
let mapleader=","
" Atalhos
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <F3> :NERDTreeToggle<cr>
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:ycm_global_ycm_extra_conf = '$HOME/.config/nvim/ycm_extra_conf/ycm_extra_conf.py'
