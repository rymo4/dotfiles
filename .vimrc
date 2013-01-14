" Have to turn this off and back on for pathogen
filetype off
"Load all my plugins
call pathogen#runtime_append_all_bundles()

" Enable syntax highlighting based on filetype
syntax on
filetype on 
filetype plugin indent on
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Don't use the annoying swap files
set nobackup
set noswapfile

" Show trailing whitespace and tabs
set list
set listchars=tab:>.,trail:%

" So good... lets you do ;w instead of :w for all commands
nnoremap ; :

" Disable the arrows : (    " disable arrow keys

" Lets you use j and k to move through wrapped lines
nnoremap j gj
nnoremap k gk

" Colors
colorscheme Tomorrow-Night-Bright
let &t_Co=256
set bg=dark
let g:molokai_original = 0

" For editing multiple files at once. map command + arrows to switch buffers. Pressing tab also now displays a little menu for selecting the completion when your press tab.
set hidden
syntax enable
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
nmap <Esc>[5D :bp<CR>
nmap <Esc>Od  :bp<CR>
nmap <Esc>OD  :bp<CR>
nmap <Esc>[5C :bn<CR>
nmap <Esc>Oc  :bn<CR>
nmap <Esc>OC  :bn<CR>
nmap <Esc>[3~ :bd<CR>
nmap ZZ :bd<CR>

" Tab size
set ts=2
set softtabstop=2

" Centers Cursor
set scrolloff=999

" Turns on Line Numbers
set nu

" Nerdtree Settings
let NERDTreeIgnore=['\.git', '.DS_Store']
let NERDTreeShowHidden=1

" Encoding
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8                     " better default than latin1
  setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif

" Autocomplete
set wildmode=list:longest
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>'
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>'
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Reload .vimrc without needing to exit vim
if has("autocmd")
 augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
 augroup EN
endif

" Language setting
set langmenu=en_US.UTF-8
language en_US.UTF-8

" Tabs to spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Show matching parens
set showmatch

" Highligh and show search matches as you type
set hlsearch
set incsearch
nmap <silent> ,/ :nohlsearch<CR>

" Font for macVim
set guifont=Monaco:h12

" Turn off that annoying sound when you do something invalid
set noerrorbells

" Highlight the cursor line
set cursorline

" Rainbow parens!! - https://github.com/kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
