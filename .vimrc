set nocompatible              " required
filetype off                  " required

" Load vim-plug
 if empty(glob("~/.vim/autoload/plug.vim"))
     execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
     endif

" Plugin configuration
call plug#begin('~/.vim/plugged')

Plug 'project.tar.gz'
Plug 'Valloric/YouCompleteMe'

" Add plugins to &runtimepath
call plug#end()

" more informative status bar
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"detect .md extension as markdown, not modula;
"https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
