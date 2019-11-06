syntax on
filetype on
set nocompatible
set nobackup
set noswapfile
set novisualbell
set noerrorbells
set number
set autoread
set hidden
set mouse=a
set completeopt-=preview
set completeopt=longest,menu
set autoindent
set smartindent
set shortmess=atI
set tabstop=4
set shiftwidth=4
set nowrap
set showmatch
set expandtab
set history=500
set guifont=DejaVu\ Sans\ Mono\ Book\ 13
set guifontwide=Microsoft\ YaHei\ 13
set fileencodings=utf-8,gb18030
set ignorecase smartcase
set clipboard+=unnamed
set nowrapscan
set incsearch
set hlsearch
set autowrite
set showmatch
set autochdir
set t_Co=256
set termguicolors

nnoremap <C-S> :w<CR>
vnoremap <C-S> <ESC>:w<CR>
inoremap <C-S> <ESC>:w<CR>
nnoremap <C-A> ggVG
vnoremap <C-A> ggVG
inoremap <C-A> <ESC>ggVG
vnoremap <C-C> "+y
vnoremap <C-X> "+x
nnoremap <C-V> "+gP
vnoremap <C-V> "+gP
inoremap <C-V> <C-R><C-O>+
nnoremap <C-O> :Explore<CR>
vnoremap <C-O> <ESC>:Explore<CR>
tnoremap <ESC> <C-\><C-N>
tnoremap <C-Y> <C-\><C-N>
tnoremap <C-B> <C-\><C-N>
tnoremap <C-U> <C-\><C-N>
nnoremap <TAB> =G
nnoremap <C-TAB> :Autoformat<CR>
nnoremap <F1> <C-W>w
tnoremap <F1> <C-\><C-N>
vnoremap <F1> <C-W>w
nnoremap <F2> :bnext<CR>
vnoremap <F2> <ESC>:bnext<CR>
inoremap <F2> <ESC>:bnext<CR>
tnoremap <F2> <C-\><C-N>
nnoremap <F3> <C-W><
vnoremap <F3> <C-W><
tnoremap <F3> <C-\><C-N>
nnoremap <F4> <C-W>>
vnoremap <F4> <C-W>>
tnoremap <F4> <C-\><C-N>
nnoremap <F5> :%s/
vnoremap <F5> <ESC>:%s/
inoremap <F5> <ESC>:%s/
nnoremap <F6> :noh<CR>
vnoremap <F6> <ESC>:noh<CR>
inoremap <F6> <ESC>:noh<CR>
nnoremap <F7> :bwipe<CR>
vnoremap <F7> <ESC>:bwipe<CR>
inoremap <F7> <ESC>:bwipe<CR>
nnoremap <F8> <C-W>s
vnoremap <F8> <C-W>s
tnoremap <F8> <C-\><C-N>
nnoremap <F9> <C-W>v
vnoremap <F9> <C-W>v
tnoremap <F9> <C-\><C-N>
nnoremap <F10> <C-W>c
vnoremap <F10> <C-W>c
tnoremap <F10> <C-D>
nnoremap <F11> :terminal<CR>
vnoremap <F11> <ESC>:terminal<CR>
inoremap <F11> <ESC>:terminal<CR>
nnoremap <F12> :rightbelow vnew term://bash<CR>
vnoremap <F12> <ESC>:rightbelow vnew term://bash<CR>
inoremap <F12> <ESC>:rightbelow vnew term://bash<CR>

call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
call plug#end()
filetype plugin indent on
colorscheme default
set background=light

let g:rustfmt_autosave=0
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_use_ultisnips_completer=0
let g:ycm_complete_in_comments=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>>'
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

hi Pmenu guifg=#232323 guibg=#f0f0f0 guisp=NONE gui=NONE ctermfg=232 ctermbg=230 cterm=NONE
hi PmenuSbar guifg=NONE guibg=#e0e0e0 guisp=NONE gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi PmenuSel guifg=#af0000 guibg=#d4d4d4 guisp=NONE gui=NONE ctermfg=124 ctermbg=187 cterm=NONE
hi PmenuThumb guifg=NONE guibg=#cacaca guisp=NONE gui=NONE ctermfg=NONE ctermbg=144 cterm=NONE

hi CursorLine guifg=NONE guibg=#e4e4e4 guisp=NONE gui=NONE ctermfg=240 ctermbg=254 cterm=NONE
hi Comment guifg=#888888 guibg=NONE guisp=NONE gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE

hi StatusLine guifg=#eeeeee guibg=#666666 guisp=NONE gui=NONE ctermfg=255 ctermbg=244 cterm=NONE
hi StatusLineNC guifg=#c6c6c6 guibg=#777777 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 cterm=NONE
hi StatusLineTerm guifg=#eeeeee  guibg=#666666 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 cterm=NONE
hi StatusLineTermNC guifg=#c6c6c6 guibg=#777777 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 term=NONE
hi VertSplit guifg=#c6c6c6 guibg=#666666 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 term=NONE

hi SignColumn guifg=NONE guibg=#ffffff guisp=NONE gui=NONE ctermfg=240 ctermbg=254 cterm=NONE
hi Error guifg=#ff0000 guibg=#ffffff guisp=NONE gui=NONE ctermfg=231 ctermbg=124 cterm=NONE
hi Todo guifg=#0000ff guibg=#ffffff guisp=NONE gui=NONE ctermfg=231 ctermbg=124 cterm=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ff5f00 guibg=NONE guisp=NONE gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi Exception guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
