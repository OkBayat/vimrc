" SETUP GUID:
" https://www.youtube.com/watch?v=XA2WjJbmmoM


" ------------------------------------------------------------------ "
" BASIC SETUP:
set number
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
set wildmenu


" ------------------------------------------------------------------ "
" TAG JUMPING:
" To use tag jumping you need to install ctags
" to more info see the following link
" https://kulkarniamit.github.io/whatwhyhow/howto/use-vim-ctags.html


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
