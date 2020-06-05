
call plug#begin()
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'mindriot101/vim-yapf'
Plug 'lervag/vimtex'
call plug#end()
nmap <F2> :NERDTreeToggle<CR>
syntax on
filetype plugin indent on
colorscheme dracula
set tabstop=4
set shiftwidth=4
set mouse=r
nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv

" highlight patterns you search for                                                                       
set hlsearch                                                                                                           
" highlight all occurances of word under cursor                                                                        
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

