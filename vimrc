"----------------------------------- 
" SET PLUGIN SETTINGS
"----------------------------------- 
call plug#begin('~/.vim/plugged')

" TESTING Jsx
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'mxw/vim-jsx'

" THEME
Plug 'NLKNguyen/papercolor-theme'
Plug 'n1ghtmare/noirblaze-vim'

" Html automatic closing tag
Plug 'alvan/vim-closetag'

" Brackets auto pairs
Plug 'LunarWatcher/auto-pairs'

" Vim-Plug Plugin manager for vim
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" In auto-suggestion, it's show defination
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }

" Autocompletion Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Plugin Ends
call plug#end()

" For devicons
set encoding=UTF-8   

" coc config - Enable Servers
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-json', 
\ 'coc-tsserver',
\ 'coc-prettier', 
\ 'coc-pairs',
\ ]
"\ 'coc-eslint', 


"------------------------------ 
" Vim General Settings
"------------------------------ 
"
" Run :VIMRC in normal mode
" to relod .vimrc ( without restarting vim )
:command VIMRC :source $MYVIMRC

colo gruvbox    " /usr/share/vim/vim82/colors/silenthill.vim
syntax on
set so=3        " Cusor will be 3 lines from top and bottom while scrolling
set backupcopy=yes
set background=dark
set hlsearch      " Highlight all search results
set smartcase     " Enable smart-case search
set ignorecase    " Always case-insensitive
set incsearch     " Searches for strings incrementally
set smartindent
set splitright
set autoindent    " Auto-indent new lines
set cindent       " Use 'C' style program indenting
set expandtab     " Use spaces instead of tabs
set shiftwidth=2  " Number of auto-indent spaces
set smartindent	  " Enable smart-indent
set smarttab	  " Enable smart-tabs
set tabstop=4
set softtabstop=4 " Number of spaces per Tab
set nonumber
set mouse=a
set cursorline
set cursorcolumn
set linebreak     " Break lines at word (requires Wrap lines)
set laststatus=0  "No footer line 
set showbreak=--> " Wrap-broken line prefix
"set textwidth=80 " Line wrap (number of cols)
set showmatch     " Highlight matching brace
"set errorbells   " Beep or flash screen on errors
"set visualbell   " Use visual bell (no beeping))""")"")"
set shortmess+=c

" For Controlling Autocomplete 
set completeopt=menuone,noinsert,preview,noselect

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" (GVIM GUI )We just hiding toolbar and menubar
set guioptions-=m  "menu bar
set guifont=Monaco\ Regular\ 11
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

"Opens suggestion on :colo <--here-->
set wildmode=list:longest,list:full
set ruler  " Show row and column ruler information

set undolevels=1000   " Number of undo levels
set backspace=indent,eol,start    " Backspace behaviour""">


" TESTING
set nocompatible
" let g:jsx_ext_required=0


"Cursor on diff mode
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
    set t_ut=
endif

" Disable Background Color Erase
set t_ut=

"------------------------------ 
" ADDITIONAL SETTINGS - KEY MAPPING
"------------------------------ 

" Nerdtree mapping
nmap <F6> :NERDTreeToggle <CR>
let NERDTreeMapOpenInTab='\r'
autocmd BufRead,BufNewFile *.py,html syntax on''>>

" Syntax highlight
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Fix identitation on filetypes
autocmd FileType javascriptreact setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript      setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType typescript      setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType conf            setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json            setlocal ts=2 sts=2 sw=2 expandtab


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
 

" SELECT RANDOM THEME - on each vim opening
"let themes=[ 'jellybeans', 
"      \      'seoul256',
"      \      'sunbather'
"      \]
"
"  execute 'colorscheme '.themes[localtime() % len(themes)]
"unlet themes


" NOREMAP COMMAND FOR VIM ( HELPING )
"
"<CR> means Enter key
"<Esc means Escape key
"<C-l> means Ctrl+l key
"<S-Tab> Shift+Tab key
"<Tab> means Tab key
"%    means current file name
"
" Setting shortcut for FZF
nmap <silent> <C-f> :FZF<CR>

"TABS
" Tab to new tab switch
nnoremap <Tab> gt
" Shift+Tab to new tab switch
nnoremap <S-Tab> gT
" Shift+t to open new tab
nnoremap <silent> <S-t> :tabnew<CR>
" Go to tab by number
" noremap <silent>1 1gt 
" noremap <silent>2 2gt 
" noremap <silent>3 3gt 
" noremap <silent>4 4gt 

"Delete entire file content
noremap <C-x> :%d <CR>

" Background Colour change mapping
nnoremap <silent> <C-l> :set background=light<CR>
nnoremap <silent> <C-d> :set background=dark<CR>

" Use system clipboard for copy-paste
" here "+ sign means an register
" y and p means yank and paste
noremap <silent> <C-c> "+y 
noremap <silent> <C-p> "+p

" Set toggle to line numbers
noremap <C-n> :set number! <CR>
noremap <C-h> :noh <CR>

" Quit/Save vim
noremap <S-s> :w  <CR>
noremap <S-q> :q! <CR>

" Coc autocomplete suggestion
" On suggestion menu, Click Enter to select the first option
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
"let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
"let g:closetag_filetypes = 'html,xhtml,phtml,js'


" Open vertical tab
nnoremap <F2> :vsp /tmp/temp.txt <CR>
nnoremap <F3> <C-w>r


"Write initial C program if filetype is c
autocmd filetype c 
      \inoremap <silent> ~~ 
      \#include <stdio.h><CR>
      \#include <stdlib.h><CR>
      \#include <string.h><CR>
      \#include <unistd.h><CR>
      \#include "shortcuts.c"
      \<CR><CR>
      \int main(){
      \<CR><CR>
      \printf("\n");
      \<CR>
      \return 0;
      \<CR>}
      \<Esc>4ko/* */ 
      \<Esc>hhhi

"Write initial C++ program if filetype is cpp
autocmd filetype cpp 
      \inoremap <silent> ~~ 
      \#include <iostream><CR>
      \using namespace std;<CR>
      \<CR><CR>
      \int main(){
      \<CR><CR>
      \cout << endl;
      \<CR>
      \return 0;
      \<CR>}
      \<Esc>4ko/* */ 
      \<Esc>hhhi


" Compile and Run C,C++ program directly
" Note : % means current file name
autocmd filetype c,cpp 
      \noremap <F5> 
      \<Esc> :w <CR> 
      \:!clear && 
      \g++ % -o %.out && 
      \printf "Compiled Successfully - % \n" && 
      \sleep .2 && 
      \printf "Running % \n\n" && 
      \sleep .5 && 
      \./%.out && 
      \rm %.out 
      \<CR>

" Compile and Run C,C++ program directly
" Note : % means current file name
autocmd filetype python 
      \noremap <F5> 
      \<Esc> :w <CR> 
      \:!clear && 
      \printf "Running %...\n" && 
      \printf "________________________\n\n" && 
      \sleep .5 && 
      \python3 % && 
      \sleep .2 && 
      \printf "\n\nExecuted Successfully\! \n\n" 
      \<CR>

" Working Code ( in case of break )
"autocmd filetype c 
"      \noremap <F5> 
"      \<Esc> :w <CR> 
"      \:!clear && 
"      \g++ % -o %.out && 
"      \printf \"Compiled Successfully - % \n" && 
"      \sleep .2 && 
"      \printf \"Running % \n\n" && 
"      \sleep .5 && 
"      \./%.out && 
"      \rm %.out 
"      \<CR>


" <CR> should be in next line ( as per observation )

" Under Testing Open kitty split then run program ;)
"noremap <F5> <Esc> :w <CR> 
"     \:!gcc % -o %.out; 
"     \kitty -e ./%.out; 
"     \sleep 5 ; 
"     \clear 
"     \<CR>


"----------PYLINT CONFIG FOR DJANGO PROJECT

" Pylint configuration for Django projects
let g:pylint_cmd = 'pylint --load-plugins pylint_django'

" Highlight only errors and warnings
let g:pylint_highlight_only_errors = 1






