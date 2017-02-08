set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


set history=500
set autoread
set so=5
set ignorecase
set smartcase


set ai "auto indent
set si "smart indent

set viminfo^=%
set smarttab
set nu
set tabstop=4
set shiftwidth=4
set expandtab
"set guifont=consolas:h11
set guifont=Source\ Code\ Pro:h11
colorscheme jellybeans
filetype plugin on
set ruler
set cursorline

" Turn off the bell for errors 
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Options to remove the menu
" " go is the abbrevaition for guioptions
set go-=m
set go-=T
set go-=r

" Insert closing brackets when inserting opening bracket
" http://vim.wikia.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
"inoremap ( ()<Esc>i
" Now, any time i type a '{', this is what i get:
" {
"<cursor here ready for coding>
"}
" "
"inoremap { {<CR><BS>}<Esc>ko
" increment the first number in the line with alt+a
nnoremap <A-a> <C-a>
" decrement the first number in the line with alt+x
nnoremap <A-x> <C-x>


" Turn on wild menu
set wildmenu
set wildignore=*.o,*~,*.pyc

if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" Don't redraw while executing macros (good performance config)
set lazyredraw 


" Show matching brackets when text indicator is over them
set showmatch 

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



