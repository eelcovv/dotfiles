""" PLUGINS

call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'brooth/far.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-startify'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ziglang/zig.vim'

call plug#end()

""" GENERIC CONFIG

set autoindent " auto indentation
set expandtab " replace tabs with spaces
set colorcolumn=80 " show ruler at specific column
set cursorline " highlight current line
set noswapfile  
set number " show line numbers
set showcmd " show command in bottom bar
set softtabstop=4 " number of spaces in tab when editing
set tabstop=4 " number of visual spaces per TAB

""" PLUGIN CONFIG

"" far.vim
" improve scrolling performance when navigating through large results
set lazyredraw

"" Limelight
let g:limelight_conceal_ctermfg = 'gray'

"" vim-airline
let g:airline#extensions#tabline#enabled = 1

"" NERD Commenter
let g:NERDCreateDefaultMappings = 1

"" NERDTree
let NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['^\.git$', '^node_modules$', '^zig-cache$']

"" gruvbox
if (has("termguicolors"))
 set termguicolors
endif
colorscheme gruvbox
set background=dark

"" vim-highlightyank
let g:highlightedyank_highlight_duration = 1000 " in ms

"" zig.vim
let g:zig_fmt_autosave = 1

"" vim-signify
" default updatetime 4000ms is not good for async update
set updatetime=100

"" ctrl.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

"" CoC
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=3

""" Custom mappings

let mapleader=" "
nmap <leader>g :Goyo<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
nmap <leader>q :NERDTreeToggle<CR>
" map ++ to call NERD Commenter in normal mode and visual mode
nmap ++ <plug>NERDCommenterToggle
xmap ++ <plug>NERDCommenterToggle

