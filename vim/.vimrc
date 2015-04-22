call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin on
filetype indent on

"Needed by Powerline
"set nocompatible   " Disable vi-compatibility
"set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show Unicode glyphs

"Omni-complete Options
set ofu=syntaxcomplete#Complete
"select longest common match, and show menu even if only 1 match
:set completeopt=longest,menuone
"select suggestion with enter key
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"keep typing to narrow matches
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"some other crazy stuff
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"""""
" open omni completion menu closing previous if open and opening new menu without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
"            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'



"Ctrl-space for omnicomplete
:imap <C-Space> <C-x><C-o>


"colorscheme murphy
set tabstop=4
"maybe the bottom two are okay
"for python and should go in
"a FT plugin there, but I like tabs
"set shiftwidth=4
"set expandtab

"TODO - Move these to snippets or other mappings - need these for build/debug
"(at least in 'normal' mode; don't need to build from insert mode)
"Time/Date Stamp
"See: http://vim.wikia.com/wiki/VimTip97
":nnoremap <F5> "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
":inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>
":nnoremap <F6> "=strftime("%T")<CR>P
":inoremap <F6> <C-R>=strftime("%T")<CR>

"TODO - Map <F1> To a custom help toggle; left sidebar.

"NERD Tree - file browser
":nnoremap <silent> <F2> :NERDTreeToggle<CR>

"Tlist supports tags in all open files, no cute triangles however.
" vimwiki/tlist experiment
"let tlist_vimwiki_settings = 'vimwiki;h:header'
"let Tlist_Use_Right_Window   = 1
":nnoremap <silent> <F3> :TlistToggle<CR>

"To allow pasting with just 'p' from the system clipboard

:set clipboard=unnamedplus

"Tab completion
set wildmode=longest,list,full
set wildmenu

