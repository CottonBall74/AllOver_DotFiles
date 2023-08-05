"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			SETTINGS                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set nocompatible


" indentation
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			VIM PLUGINS          			                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.

" Use release branch (recommended)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" coc snippets
" Plug 'neoclide/coc-snippets'

" coc installs
Plug 'tjdevries/coc-zsh'


" rename helper
Plug 'filipdutescu/renamer.nvim'

" Color theme
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'

" File Manager
Plug 'preservim/nerdtree'

" tagbar
Plug 'preservim/tagbar'

" FuzzyFinders
Plug 'nvim-telescope/telescope.nvim'
    " deps for fzf
    Plug 'nvim-lua/plenary.nvim'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			KEY MAPPINGS 				                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moves a line of code up or down
nnoremap <A-k> <ESC>:m .-2<CR>==
nnoremap <A-j> <ESC>:m .+1<CR>==
vnoremap <A-k> <ESC>:m '<-2<CR>gv=gv
vnoremap <A-j> <ESC>:m '>+1<CR>gv=gv

" Toggles between mouse a & r
nnoremap <A-a> <ESC>:set mouse=a<CR>
nnoremap <A-r> <ESC>:set mouse=r<CR>

" Toggle numbers
nnoremap <F11> :set number!<CR>
inoremap <F11> <ESC>:set number!<CR>

" Toggle relative numbers
nnoremap <F12> :set relativenumber!<CR>
inoremap <F12> <ESC>:set relativenumber!<CR>

" go to definition


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 			PLUGIN COMMANDS     		                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color commands
colo gruvbox
let g:airline_theme='base16_gruvbox_dark_hard'

" coc commands
nnoremap <A-d> <ESC>:call CocActionAsync('jumpDefinition')<CR>


nnoremap <A-e> <ESC>:NERDTreeToggle<CR>

nnoremap <A-m> <ESC>:TagbarToggle<CR>

nnoremap <A-F> <ESC>:Telescope find_files<CR>

