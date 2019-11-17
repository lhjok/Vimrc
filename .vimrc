syntax on
filetype on
packadd termdebug
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
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=b
set autoindent
set smartindent
set shortmess=atI
set tabstop=4
set shiftwidth=4
set nowrap
set showmatch
set expandtab
set history=1000
set guifont=DejaVu\ Sans\ Mono\ Book\ 13
set guifontwide=Microsoft\ YaHei\ 13
set fileencodings=utf-8,gb2312,gbk,gb18030,cp936
set ignorecase smartcase
set clipboard+=unnamedplus
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
inoremap <C-A> <ESC>ggVG
vnoremap <C-C> "+y
vnoremap <C-X> "+x
nnoremap <C-V> "+gP
vnoremap <C-V> "+gP
inoremap <C-V> <C-R><C-O>+
nnoremap <M-'> :Termdebug 
vnoremap <M-'> <ESC>:Termdebug 
inoremap <M-'> <ESC>:Termdebug 
nnoremap <M-\> :Run<CR>
vnoremap <M-\> <ESC>:Run<CR>
inoremap <M-\> <ESC>:Run<CR>
nnoremap <M-[> :Break<CR>
vnoremap <M-[> <ESC>:Break<CR>
inoremap <M-[> <ESC>:Break<CR>
nnoremap <M-]> :Clear<CR>
vnoremap <M-]> <ESC>:Clear<CR>
inoremap <M-]> <ESC>:Clear<CR>
nnoremap <C-]> :browse confirm e<CR>
vnoremap <C-]> <ESC>:browse confirm e<CR>
inoremap <C-]> <ESC>:browse confirm e<CR>
nnoremap <C-K> :bwipe<CR>
vnoremap <C-K> <ESC>:bwipe<CR>
inoremap <C-K> <ESC>:bwipe<CR>
nnoremap <M-.> :YcmCompleter GoToDefinition<CR>
inoremap <M-.> <ESC>:YcmCompleter GoToDefinition<CR>
nnoremap <M-/> :YcmCompleter GoToDeclaration<CR>
inoremap <M-/> <ESC>:YcmCompleter GoToDeclaration<CR>
tnoremap <ESC> <C-W>N
tnoremap <C-Y> <C-W>N
tnoremap <C-B> <C-W>N
tnoremap <C-U> <C-W>N
nnoremap <C-T> :Autoformat<CR>
nnoremap <TAB> =G
nnoremap <F1> <C-W>w
tnoremap <F1> <C-W>w
vnoremap <F1> <C-W>w
nnoremap <F2> :bnext<CR>
vnoremap <F2> <ESC>:bnext<CR>
inoremap <F2> <ESC>:bnext<CR>
tnoremap <F2> <C-W>N
nnoremap <C-P> :bprev<CR>
vnoremap <C-P> <ESC>:bprev<CR>
inoremap <C-P> <ESC>:bprev<CR>
tnoremap <C-P> <C-W>N
nnoremap <F3> <C-W><
vnoremap <F3> <C-W><
tnoremap <F3> <C-W><
nnoremap <F4> <C-W>>
vnoremap <F4> <C-W>>
tnoremap <F4> <C-W>>
nnoremap <F5> :promptrepl<CR>
vnoremap <F5> <ESC>:promptrepl<CR>
inoremap <F5> <ESC>:promptrepl<CR>
nnoremap <F6> :noh<CR>
vnoremap <F6> <ESC>:noh<CR>
inoremap <F6> <ESC>:noh<CR>
nnoremap <F7> :Neomake<CR>
vnoremap <F7> <ESC>:Neomake<CR>
inoremap <F7> <ESC>:Neomake<CR>
nnoremap <F8> <C-W>s
vnoremap <F8> <C-W>s
tnoremap <F8> <C-W>N
nnoremap <F9> <C-W>v
vnoremap <F9> <C-W>v
tnoremap <F9> <C-W>N
nnoremap <F10> <C-W>c
vnoremap <F10> <C-W>c
tnoremap <F10> <C-D>
nnoremap <F11> :term ++curwin<CR>
vnoremap <F11> <ESC>:term ++curwin<CR>
inoremap <F11> <ESC>:term ++curwin<CR>
tnoremap <PageUp> <C-W>N
tnoremap <ScrollWheelUp> <C-W>N
nnoremap <F12> :rightbelow vert term<CR>
vnoremap <F12> <ESC>:rightbelow vert term<CR>
inoremap <F12> <ESC>:rightbelow vert term<CR>

call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'neomake/neomake'
call plug#end()
filetype plugin indent on
colorscheme default
set background=light

let g:termdebug_wide=135
let g:termdebug_use_prompt=1
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
let g:neomake_open_list=2
let g:neomake_rust_cargo_command=['build', '--release']

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
hi debugPC guifg=NONE guibg=#e4e4e4 guisp=NONE gui=NONE ctermfg=240 ctermbg=254 term=NONE
hi debugBreakpoint guifg=red guibg=#ffffff guisp=NONE gui=NONE ctermfg=red ctermbg=NONE term=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ff5f00 guibg=NONE guisp=NONE gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi Exception guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
