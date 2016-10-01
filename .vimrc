" Plugins order install
" 1. pathogen ok
" 2. fugitive + gitgutter + airline ok 
" 3. nerdtree ok 
" 4. nerdcommenter ok
" 5. CTRL + P ok
" 6. solarized (optionnal)
" 7. rainbowParentheses ok 
" 8. taglist
" 9. syntastic ok
" 10. snipmate
" 11. neocomplete ok
"
" Scala
" 1. scala-vim ok
" 2. ensime-vim ok (ouais bon pas testé)

syntax enable
set background=dark
set undolevels=10000
set hlsearch
set tabstop=2
set autoindent
set smartindent
set nosmarttab
set shiftwidth=2
set textwidth=84
set expandtab
set number
set mouse=a
set clipboard=unnamedplus
set modeline

execute pathogen#infect()
:filetype plugin on
filetype plugin indent on

" Nerdtree's Settings--------------------------------------
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

" CTRL + P Settings----------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

" Rainbow parentheses ------------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NeoComplete Settings -----------------------------------
let g:neocomplete#enable_at_startup = 1
