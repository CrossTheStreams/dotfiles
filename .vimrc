call pathogen#infect()

set term=screen-256color
filetype plugin indent on
syntax on

"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set background=dark

set scroll=10

set backspace=2 "

colorscheme railscasts

set expandtab
set shiftwidth=2
set softtabstop=2

"let g:gist_use_password_in_gitconfig = 1
"let g:gist_post_private = 1

" old tslime.vim settings
"vmap <C-c><C-c> <Plug>SendSelectionToTmux
"nmap <C-c><C-c> <Plug>NormalModeSendToTmux
"nmap <C-c>r <Plug>SetTmuxVars

map <Leader>vx :VimuxClosePanes<CR>
map <Leader>vp :VimuxPromptCommand<CR>
"vmap <LocalLeader>vs "vy :call VimuxRunCommand(@v . "\n", 0)<CR>
"nmap <LocalLeader>vs vip<LocalLeader>vs<CR>

" \c to toggle vertical and horizontal cursor lines
:hi CursorLine   cterm=NONE ctermbg=darkyellow ctermfg=white guibg=darkyellow guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkyellow ctermfg=white guibg=darkyellow guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" \n To toggle line numbers
:nnoremap <Leader>n :set number!<CR>

vmap <C-c><C-c> "vy :call VimuxRunCommand(@v . "", 0)<CR>
let g:VimuxOrientation = "h"
let g:VimuxHeight = "50"
"nmap <C-c>r <Plug>SetTmuxVars

"set clipboard=unnamed

:filetype plugin on

" Give a shortcut key to NERD Tree
map <Tab> :NERDTreeToggle<CR>

:set number

" associate *.pjs with js filetype
au BufNewFile,BufRead *.pjs set filetype=JavaScript
au BufNewFile,BufRead *.hamlc set filetype=Haml

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let

highlight def link rubyRspec Function

nnoremap <gt> :tabprevious<CR>
nnoremap <gt> :tabnext<CR>

nnoremap <left> :vertical resize -1<cr>
nnoremap <down> :resize +1<cr> 
nnoremap <up> :resize -1<cr>
nnoremap <right> :vertical resize +1<cr>

" ctrp exclusions
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

