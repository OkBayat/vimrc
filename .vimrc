" SETUP GUID:
" https://www.youtube.com/watch?v=XA2WjJbmmoM


" ------------------------------------------------------------------ "
" BASIC SETUP:
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nocompatible

" Enable syntax and plugins (for netrw)
syntax enable
filetype plugin on
colorscheme darcula


" ------------------------------------------------------------------ "
" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
set wildignore+=**/node_modules/**
set wildignore+=**/*.map
set wildignore+=**/dist/**

" Display all matching files when we tab complete
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
" - :b lets you autocomplete any open buffer
" - :ls displays opened files in buffer
set wildmenu


" ------------------------------------------------------------------ "
" TAG JUMPING:
" To use tag jumping you need to install ctags
" to more info see the following link
" https://kulkarniamit.github.io/whatwhyhow/howto/use-vim-ctags.html

" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack


" ------------------------------------------------------------------ "
" AUTOCOMPLETE:
" The good stuff is documented in 'ins-completion'
" - ^x^n for just this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n   for anything specified by the 'complete' option
" - Use ^n and ^p to go back and forth in the suggestion list


" ------------------------------------------------------------------ "
" TMUX VIM:
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif

if has("win32unix")
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif


" ------------------------------------------------------------------ "
" SHORT KEYS:
" - A+j Moves current line/bloc down
" - A-k Moves current line/bloc up

" execute "set <A-j>=\ej"
" execute "set <A-k>=\ek"
" :nnoremap <A-j> :m+ <CR>==
" :nnoremap <A-k> :m-2<CR>==
" :inoremap <A-j> <Esc>:m+ <CR>==gi
" :inoremap <A-k> <Esc>:m-2<CR>==gi
" :vnoremap <A-j> :m '>+1<CR>gv=gv
" :vnoremap <A-k> :m '<-2<CR>gv=gv


" ------------------------------------------------------------------ "
" OTHERS:
set foldmethod=syntax
set fillchars=fold:\ 
set hlsearch
