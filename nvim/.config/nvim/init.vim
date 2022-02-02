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
    Plug 'gruvbox-community/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'liuchengxu/vim-which-key'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'onthree/yajs.vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'dense-analysis/ale'
call plug#end()


if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme gruvbox

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :WhichKey'<Space>'<CR>
set timeoutlen=500

nmap <silent><c-h> :wincmd h<cr>
nmap <silent><c-j> :wincmd j<cr>
nmap <silent><c-k> :wincmd k<cr>
nmap <silent><c-l> :wincmd l<cr>

nnoremap <leader>a  :NERDTreeToggle<CR>
nnoremap <leader>f  :Files<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>t  :sp term://zsh<CR>:resize 10<CR>
nnoremap <leader>r  :!javac %<cr>:!java -cp "%"<CR>

