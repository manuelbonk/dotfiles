" set mouse=a

" Jump to files directory
" autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" set nocompatible

" set showcmd

" set foldmethod=marker

"" filetype on
"" filetype plugin on
"" syntax enable
"set grepprg=grep\ -nH\ $*

"set autoindent

"set expandtab
"set smarttab

"set shiftwidth=4
"set softtabstop=4

"set wildmenu
"set wildmode=list:longest,full

"set backspace=2

"set number

"set ignorecase
"set smartcase

"inoremap jj <Esc>
"nnoremap JJJJ <Nop>

"set incsearch
"set hlsearch

"hi LineNr ctermfg=darkgrey ctermbg=black

"highlight MatchParen ctermbg=yellow

"" Next Tab
"nnoremap <silent> <C-S-Right> :tabnext<CR>

"" Previous Tab
"nnoremap <silent> <C-S-Left> :tabprevious<CR>

"" New Tab
"nnoremap <silent> <C-t> :tabnew<CR>
"nnoremap <silent> <C-w> :tabclose<CR>

"" Space will toggle folds!
"nnoremap <space> za

"set cul
"hi CursorLine term=none ctermbg= gray ctermfg=black
"highlight Cursor guifg=white guibg=black

"filetype plugin indent on
"syntax on

" pathogen
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

set t_Co=256
let g:solarized_termcolors=256


" Powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" should make powerline look more fancy, but doesn't work
" let g:Powerline_symbols = 'fancy'


" toggle line numbering with F2
set number
nnoremap <F2> :set nonumber!<CR>

" set theme solarized
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

noremap <F3> :Autoformat <CR><CR>
