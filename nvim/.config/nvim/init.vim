" PLUGINS **************************
call plug#begin()

" find and replace 
Plug 'brooth/far.vim'

" vim-snipmate default snippets
Plug 'honza/vim-snippets'

" highlight yank area
Plug 'machakann/vim-highlightedyank'

" Retro groove color scheme
Plug 'morhetz/gruvbox'

" toggle comment/uncomment
Plug 'scrooloose/nerdcommenter'

" snippet files
Plug 'SirVer/ultisnips'

" tabline and themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" show added/removed lines in files managed by a VCS (e.g. git)
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Initialize plugin system
call plug#end()

" show line numbers
" https://jdhao.github.io/2019/01/11/line_number_setting_nvim/
set number

syntax on " syntax highlighting

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab " replace tabs with spaces

set showcmd " show command in bottom bar

" automatic indentation
set autoindent

set cursorline

" show ruler at specific column
set colorcolumn=80

let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='molokai'

let g:highlightedyank_highlight_duration = 1000

" COLOR SCHEME *****
colorscheme gruvbox
set background=dark

