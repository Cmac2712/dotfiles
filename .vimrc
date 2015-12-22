set nocompatible              " be iMproved, required
filetype plugin indent on
set mouse=a		      " allow mouse support
" set encoding=utf-8

"----------------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------------

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'unblevable/quick-scope'
" Plugin 'pangloss/vim-javascript'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
" Plugin 'bronson/vim-trailing-whitespace'
Plugin 'lilydjwg/colorizer'
Plugin 'justinmk/vim-gtfo'
Plugin 'powerline/fonts'

call vundle#end()
" Bundle 'wakatime/vim-wakatime'

"----------------------------------------------------------------------------
" Color Scheme
"----------------------------------------------------------------------------

set t_Co=256         " Allow 256 colorschemes
set background=dark
colorscheme gruvbox
syntax enable


"----------------------------------------------------------------------------
"  CtrlP Settings
"----------------------------------------------------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

noremap <leader>f<space> :CtrlP
noremap <leader>cpb :CtrlPBuffer<cr>

if (!empty(glob("../magento")))
    noremap <leader>cpd :CtrlP app/design/defualt/template<cr>
    noremap <leader>cps :CtrlP skin/frontend/hazy<cr>
endif

"----------------------------------------------------------------------------
"  ag.vim Settings
"----------------------------------------------------------------------------

let g:ag_working_path_mode="r"

"-----------------------------------------------------------------
"   NEOCOMPLETE SETTINGS
"-----------------------------------------------------------------

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"----------------------------------------------------------------------------
" EMMET-VIM SETTINGS
"----------------------------------------------------------------------------

let g:user_emmet_leader_key=','
let g:user_emmet_mode='a'
imap hh ,,


"----------------------------------------------------------------------------
" Status Line
"----------------------------------------------------------------------------

" first, enable status line always
" set laststatus=2

" now set it up to change the status line based on mode
" if version >= 700
"   au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
"   au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
" endif

"----------------------------------------------------------------------------
" VIM AIRLINE
"----------------------------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1

"----------------------------------------------------------------------------
" Key Mappings
"----------------------------------------------------------------------------

" Remap esc
imap jk <ESC>
imap kj <ESC>
imap Jk <esc>
imap kJ <esc>
imap jK <esc>
imap Kj <esc>
imap JK <esc>
imap KJ <esc>

" Copy/Paste to sytem clipboard
vnoremap <C-c> "+yya
vnoremap <C-v> "*pi

" Toggle :set paste
set pastetoggle=<F3>

" Traverse buffer list
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

let g:neocomplete#enable_at_startup = 1

" Remap ader
let mapleader = "\<Space>"

" Save with leader
" nnoremap <Leader>ww :w<CR>
nnoremap s :w<cr>

" Save + Quit with leader
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>zz :wq<CR>

" Trim whitespace
nnoremap <Leader>tw :%s/\s\+$//<cr>``

" Quick editing
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>eg :vsp %/.gitignore<cr>
nnoremap <leader>et :vsp ~/tmux/.tmux.conf<cr>

" Search and replace
nnoremap <leader>q :%s/

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" Toggle relative/absolute numbers
nnoremap <silent><Leader>n :set relativenumber!<cr>

" Open NERDTree
nnoremap <silent><Leader>op :NERDTreeToggle<CR>


" Increment/Decrement numbers
" :nnoremap <A-k> <C-a>
" :nnoremap <A-j> <C-x>

" Open NERDTree
" :map <C-k> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1

" Inserting blank lines
" I never use the default behavior of <cr> and this saves me a keystroke...
nnoremap <cr> o<esc>

" command W w !sudo tee % > /dev/null

"----------------------------------------------------------------------------
" Netrw
"----------------------------------------------------------------------------

let g:netrw_liststyle=1

" Open file explorer
" nnoremap <C-k> :Vexplore<CR>



"----------------------------------------------------------------------------

" Neovim
"----------------------------------------------------------------------------

" :tnoremap jk <C-\><C-n>
" :tnoremap kj <C-\><C-n>

" Navigate window usign alt
" :tnoremap <A-h> <C-\><C-n><C-w>h
" :tnoremap <A-j> <C-\><C-n><C-w>j
" :tnoremap <A-k> <C-\><C-n><C-w>k
" :tnoremap <A-l> <C-\><C-n><C-w>l
" :nnoremap <A-h> <C-w>h
" :nnoremap <A-j> <C-w>j
" :nnoremap <A-k> <C-w>k
" :nnoremap <A-l> <C-w>l




"----------------------------------------------------------------------------
" Misc
"----------------------------------------------------------------------------

:set omnifunc=syntaxcomplete#Complete

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Enable backspace
set backspace=indent,eol,start

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Move swap file locations
set swapfile
set dir=~/swp

" Autoreload file on change
:set autoread

" Auto indent
:set ai

" Breakindent
set breakindent

" http://vim.wikia.com/wiki/Get_the_correct_indent_for_new_lines_despite_blank_lines
:inoremap <CR> <CR>x<BS>

" Auto reload .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

set shiftwidth=4 softtabstop=4
set number

" Practical Vim page 95
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Practical Vim page 102
nnoremap <leader>mkd :!mkdir -p %:h<cr>

" Save as root (Practical Vim page 103)
" nnoremap :sudow<cr> :w !sudo tee % > /dev/null<cr>

" Blootshot025 from Reddit
set fillchars=vert:│,fold:-
highlight VertSplit cterm=none ctermbg=none ctermfg=247

" Wildignore
set wildignore+=*node_modules/,*.git/,*.sass-cache/

" Find Path
set path +=skin/frontend/indez/**
set path +=app/design/frontend/indez/**

" Highlight lines which exceed 80 columns
" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
