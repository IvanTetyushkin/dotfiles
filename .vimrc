" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set hlsearch
endif

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Switch wrap off for everything
set nowrap

set laststatus=2
set shiftround
set textwidth=80
set number
set numberwidth=5
set smartindent    
set cursorline
colorscheme koehler
syntax enable
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matchesa
nnoremap <leader><space> :nohlsearch<CR

if has("syntax")
    " Enable syntax highlighting
    syntax enable
    " Set 256 color terminal support
    set t_Co=256
    " Set dark background
    set background=dark
    " Set colorscheme
    colorscheme OceanicNext
endif

if has('statusline')
    " Always show status line
    set laststatus=2
    " Broken down into easily includeable segments
    " Filename
    set statusline=%<%f\
    " Options
    set statusline+=%w%h%m%r
    " Current dir
    set statusline+=\ [%{getcwd()}]
    " Right aligned file nav info
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif

if has("wildmenu")
    " Show a list of possible completions
    set wildmenu
    " Tab autocomplete longest possible part of a string, then list
   " set wildmode=longest,list
    if has ("wildignore")
        set wildignore+=*.a,*.pyc,*.o,*.orig
        set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png
        set wildignore+=.DS_Store,.git,.hg,.svn
        set wildignore+=*~,*.sw?,*.tmp
    endif
endif

if filereadable(".vimrc.local")
  source .vimrc.local
endif
