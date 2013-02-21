" ----------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ----------------------------------------

" Config {{{
" hardcore_mode for people who really want to use vim to it's maximum
if !exists("g:hardcore_mode")
  let g:hardcore_mode=1
end
" }}}

" Backups {{{
set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp
" }}}

" UI {{{
set ruler          " Ruler on
set nu             " Line numbers on
set lazyredraw     " Don't update the display while executing macros
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set numberwidth=5
set encoding=utf-8
set guioptions=acg
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set cursorline
set scrolloff=3
if exists('+colorcolumn')
  set colorcolumn=80 " Color the 80th column differently
endif
" }}}

" Behaviors {{{
filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)
syntax enable
set autoread           " Automatically reload changes if detected
set wildmode=list:longest " use emacs-style tab completion when selecting files, etc
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set autowriteall       " Writes on make/shell commands
set timeoutlen=350     " Time to wait for a command (after leader for example)
set foldmethod=syntax
set nofoldenable
set cpoptions+=$
set formatoptions=crql
set iskeyword+=$,@,-     " Add extra characters that are valid parts of variables
" Better complete options to speed it up
set complete=.,w,b,u,U
" }}}

" Status Line {{{
set statusline=[%n]\ %f\ %m\ %y
set statusline+=%{fugitive#statusline()} " Show git details"
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " Show RVM details"
set statusline+=%w              " [Preview]
set statusline+=%=              " Left/right separator
set statusline+=%c,             " Cursor column
set statusline+=%l/%L           " Cursor line/total lines
set statusline+=\ %P            " Percent through file
" }}}

" Text Format {{{
set tabstop=2
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2
" }}}

" Searching {{{
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set showmatch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class,*.scssc
" }}}

" Visual {{{
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" }}}

" Sounds {{{
set noerrorbells
set novisualbell
" }}}

" Mouse {{{
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
" }}}
