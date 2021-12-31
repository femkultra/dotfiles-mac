"Rebecca's VimRC
set nocompatible
"Tab options
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set noerrorbells "Get rid of annoying error noise

"Numbering options
set nu
set relativenumber

set hidden "Hold buffers when they are closed

set nowrap "Don't wrap text around

"Swap file settings
set noswapfile
set nobackup
set undodir=~/.vim/undodir

set incsearch "Enable incremental search

set scrolloff=8 "Start scrolling at 8 lines from the bottom

set termguicolors "Vim sets colors rather than the terminal

set nohlsearch "Dont highlight when searching

set ignorecase
set smartcase

set noshowmode

"Natural splitting
set splitbelow
set splitright

let mapleader=","

"Plugins
call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'arcticicestudio/nord-vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
call plug#end()

"Plugin settings that I frankly don't know what they do lmao
let g:AutoPairsShortcutToggle = '<C-P>'
let g:airline_powerline_fonts=1
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
let g:afterglow_inherit_background=1

set rtp+=/usr/local/opt/fzf

colorscheme nord
highlight Comment cterm=italic

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc

"Maps and remaps
"Toggle nerdtree with F5
"Simplified split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
