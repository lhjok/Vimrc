syntax on
filetype on
set nocompatible
set nobackup
set noswapfile
set novisualbell
set number
set completeopt-=preview
set completeopt=longest,menu
set guioptions-=r
set guioptions-=L
set guioptions-=b
set autoindent
set smartindent
set shortmess=atI
set tabstop=4
set shiftwidth=4
set linespace=-3
set nowrap
set showmatch
set expandtab
set history=1000
set guioptions-=T
set guifont=Consolas\ 13
set guifontwide=Microsoft\ YaHei\ 13
set fileencodings=utf-8,gb18030
set ignorecase smartcase
set clipboard+=unnamed
set nowrapscan
set incsearch
set hlsearch
set autowrite
set showmatch
set lines=30 columns=120
set termguicolors
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
call plug#end()
filetype plugin indent on
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_use_ultisnips_completer=0
let g:ycm_complete_in_comments=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
colorscheme default
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

function CloseBracket()
    if match(getline(line('.') + 1), '\s*}') < 0
        return "\<CR>}"
    else
        return "\<Esc>j0f}a"
    endif
endf

function QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
        return a:char
    elseif line[col - 1] == a:char
        return "\<Right>"
    else
        return a:char.a:char."\<Esc>i"
    endif
endf

hi Pmenu guifg=#232323 guibg=#f0f0f0 guisp=NONE gui=NONE ctermfg=232 ctermbg=230 cterm=NONE
hi PmenuSbar guifg=NONE guibg=#e0e0e0 guisp=NONE gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi PmenuSel guifg=#af0000 guibg=#d4d4d4 guisp=NONE gui=NONE ctermfg=124 ctermbg=187 cterm=NONE
hi PmenuThumb guifg=NONE guibg=#cacaca guisp=NONE gui=NONE ctermfg=NONE ctermbg=144 cterm=NONE

hi Comment guifg=#888888 guibg=NONE guisp=NONE gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE

hi StatusLine guifg=#eeeeee guibg=#777777 guisp=NONE gui=NONE ctermfg=255 ctermbg=244 cterm=NONE
hi StatusLineNC guifg=#c6c6c6 guibg=#666666 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 cterm=NONE
hi StatusLineTerm guifg=#eeeeee  guibg=#777777 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 cterm=NONE
hi StatusLineTermNC guifg=#c6c6c6 guibg=#666666 guisp=NONE gui=NONE ctermfg=251 ctermbg=244 term=NONE

hi SignColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=254 cterm=NONE
hi Error guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=231 ctermbg=124 cterm=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ff5f00 guibg=NONE guisp=NONE gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi Exception guifg=#d70000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
