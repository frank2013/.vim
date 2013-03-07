filetype on  " Automatically detect file types.
filetype plugin indent on
set nocompatible  " We don't want vi compatibility.
syntax enable
set encoding=utf-8
set shell=bash

" Install pathogen to help manage plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader = ","
let g:mapleader = ","
nnoremap ; :
inoremap <C-space> <Esc>

" When scrolling the viewport, scroll 3 lines at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Allows you to save the file as sudo after you
" have already opened as an unpriveleged user.
cmap w!! w !sudo tee % >/dev/null

" Toggle the tag list window
nnoremap <Leader>tt :TlistToggle<cr>
nnoremap <Leader>tl :TaskList<cr>

" Fugitive
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gs :Gstatus<cr>

" Show the command tree
set showcmd

" Show NERDTree using ,p
nnoremap <leader>nt :NERDTreeToggle<cr>

" CtrlP
nnoremap <leader>p :CtrlP<cr>

" YankRing
nnoremap <leader>y :YRShow<cr>

" show the terminal title
set title

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set backupdir=~/.vim/backup " where to put backup files
set directory=~/.vim/tmp " directory to place swap files in
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme

" Formatting
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Line Numbers
set nu

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.

" Show $ at end of line and trailing space as ~
set list lcs=tab:\›\ ,trail:~,extends:>,precedes:<
" set list lcs=tab:\›\ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab configuration
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map ] :tabnext<cr>
map [ :tabprev<cr>

" Enable OmniCompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

" Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" Improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Needed for iTerm2 solarized I guess
set background=light

set wrap
nnoremap j gj
nnoremap k gk

let g:Powerline_symbols = 'fancy'

highlight ColorColumn ctermbg=red
set colorcolumn=80,81

" Gundo
nnoremap <leader>gt :GundoToggle<CR>

" Kill remapping of [[, [], [",  etc. by certain (vim.vim) filetype plugins.
autocmd Filetype vim,python unmap <buffer> [[
autocmd Filetype vim unmap <buffer> []
autocmd Filetype vim,python unmap <buffer> ]]
autocmd Filetype vim unmap <buffer> ][
autocmd Filetype vim unmap <buffer> ["
autocmd Filetype vim unmap <buffer> ]"
autocmd Filetype python unmap <buffer> [m
autocmd Filetype python unmap <buffer> ]m

" Get rid of vim-gitgutter gray band.
highlight clear SignColumn
