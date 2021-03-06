
let &packpath = &runtimepath

set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set tabstop=2 shiftwidth=2
set laststatus=2
set noshowmode
set bg=dark

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" Status
Plug 'itchyny/lightline.vim'

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Preview
Plug 'tyru/open-browser.vim'
Plug 'xavierchow/vim-swagger-preview'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

call plug#end()

let NERDTreeQuitOnOpen=1
let mapleader=" "

colorscheme gruvbox

let g:plantuml_previewer#plantuml_jar_path = "/usr/share/java/plantuml.jar"

let g:coc_global_extensions = [
	\ 'coc-java', 
	\ 'coc-go', 
	\ 'coc-python',
	\ 'coc-json',
	\ 'coc-java-lombok',
	\ 'coc-kotlin',
	\ 'coc-omnisharp',
  \ 'coc-tsserver' 
	\ ]

let g:coc_global_config='~/.config/nvim/coc-settings.json'

autocmd BufReadPost *.kt setlocal filetype=kotlin

map <Leader>s <Plug>(easymotion-s2)
map <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

nmap <Leader><Down>  <C-w>j
nmap <Leader><Up>    <C-w>k
nmap <Leader><Left>  <C-w>h
nmap <Leader><Right> <C-w>l
nmap <Leader>v <C-w>v
nmap <Leader>s <C-w>s

nmap <Leader>f :Rg<CR>
nmap <Leader>p :Files<CR>

nmap <Tab> :tabn<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

cnoreabbrev puml PlantumlOpen 
cnoreabbrev md MarkdownPreview 
nmap <unique> <leader>sw <Plug>GenerateDiagram 

