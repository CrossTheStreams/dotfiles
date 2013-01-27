call pathogen#infect()

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

syntax on
set background=dark
set scroll=10

colorscheme Tomorrow-Night-Eighties 

:filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2

nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

set clipboard=unnamed

:filetype plugin on

" Give a shortcut key to NERD Tree
map <Tab> :NERDTreeToggle<CR>

:set number

" associate *.pjs with js filetype
au BufNewFile,BufRead *.pjs set filetype=JavaScript
au BufNewFile,BufRead *.hamlc set filetype=Haml

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let

highlight def link rubyRspec Function

vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>

nnoremap <gt> :tabprevious<CR>
nnoremap <gt> :tabnext<CR>


