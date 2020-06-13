"Vim Modus statt Vi Modus verwenden
set nocompatible

"set vim to 256 color schemes
set t_Co=256

"Erkennen des Dateityps aktivieren
filetype plugin on

"activate indenting based on file type
filetype indent on

let mapleader=","

syntax enable
set fileencoding=utf-8
set encoding=utf-8
set autoindent

"Backspace im Einf√ºge-Modus erlauben
set backspace=indent,eol,start


"bind save file to new key. The command to save a file is :update (:w)
noremap <Leader>s :update<CR>
noremap <Leader>q :exit<CR>
noremap <Leader>e :!python3 %<CR>

" Nerdtree stuff: https://github.com/preservim/nerdtree
noremap <Leader>t :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"activate automatic Indenting
set ai

" Smart Indenting 
set si

" create backup files in ~/.vim/backups and add suffix .bak
set backup
set backupdir=~/.backups
set backupext=.bak

" limit command line history to last 1000 commands
set history=1000

" show curser in status bar and color current line
set ruler
set cursorline

" Show line numbers
set nu

"set a visual line at 80 character limit when 80 characters are hit
highlight ColorColumn ctermbg=magenta
call matchadd('colorColumn', '\%81v', 100)


call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()


" highlight matching parantheses
set showmatch

" show commands in lower right statur bar when typing the command itself
set showcmd

" activate incremental search, ignore upper/lower case when searching and
" color results
set smartcase
set incsearch
set ic
set hlsearch
set ignorecase

" activate syntax highlighting
syntax on

" set automatic indent when Autoindent and amount of tabs to 4
set sw=2
set ts=2
set sts=2

let g:solarized_termcolor=256

"" Whitespace stuff
set nowrap
set expandtab

"vim footer
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through fil

au BufNewFile,BufRead Jenkinsfile setf groovy


