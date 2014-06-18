"Ruperts VIM settings"
syntax on

call pathogen#infect() 
call pathogen#helptags() 

if has("win32")
    set guifont=Consolas:h9:cANSI
endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
  :colo desert
else
  :colo elflord
endif


set number
let mapleader = ","
let maplocalleader = "/"
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

nnoremap <F5> :w<CR>:!python "%" <CR>
inoremap <F5> <ESC>:w<CR>:!python "%" <CR>
nnoremap <F6> :w<CR>:!python -i "%" <CR>
inoremap <F6> <ESC>:w<CR>:!python -i "%" <CR>
nnoremap <F7> :w<CR>:!pychecker "%" <CR>
nnoremap <F8> :w<CR>:!start python "%" <CR>


filetype plugin on
if has("win32")
    let g:pydiction_location = '~\vimfiles\bundle\pydiction\etc\complete-dict'
else
    let g:pydiction_location = '~/.vim/bundle/pydiction/etc/complete-dict'
endif    

" Cursor

" Whitespace
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

"" Searching
set hlsearch
set incsearch
set smartcase

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

set nowrap
set go+=b

let g:Tlist_Ctags_Cmd =  '~\vimfiles\bundle\taglist\bin\ctags.exe'

set foldmethod=indent 
nnoremap <space> za
vnoremap <space> zf

inoremap jk <esc>
inoremap kj <esc>

ab pymain if __name__ == "__main__":

"from http://learnvimscriptthehardway.stevelosh.com"
"move line up/down using -/_"
nnoremap <leader>_ ddkkp 
nnoremap <leader>- ddp
nnoremap <leader>ev :vsplit $MYVIMRC<cr> G
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hviwo<esc>i"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hviwo<esc>i'<esc>lel
noremap <leader>sp :vsplit ~\dropbox\scratchpad.txt<CR>

vnoremap <leader># I#<esc> 

set backspace=indent,eol,start

