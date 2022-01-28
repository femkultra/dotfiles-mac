set scrolloff=8
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf8
set nohlsearch
set splitright
set splitbelow

let g:airline_powerline_fonts = 1

call plug#begin("~/.vim/plugged")
    Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'liuchengxu/vim-which-key'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
call plug#end()

if (has("termguicolors"))
set termguicolors
endif
syntax enable
let ayucolor="mirage"
colorscheme ayu

let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :WhichKey'<Space>'<CR>
set timeoutlen=500

nmap <silent><c-h> :wincmd h
nmap <silent><c-j> :wincmd j
nmap <silent><c-k> :wincmd k
nmap <silent><c-l> :wincmd l

nnoremap <leader>a  :NERDTreeToggle<CR>
nnoremap <leader>f  :Files<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>t  :sp term://zsh<CR>:resize 10<CR>
nnoremap <leader>r  :!javac %<cr>:sp term://zsh<CR>"java -cp %"<CR>
