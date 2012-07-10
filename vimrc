call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

iabbr Pdb import pdb;pdb.set_trace()

set bdir=/tmp
set autoindent
set backspace=2
set expandtab
set grepprg=grep\ -nH\ $*
set history=50
set hlsearch
set incsearch
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set listchars=tab:>-,trail:',eol:$
set modelines=20
set mouse=a
set ruler
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4
set viminfo='20,\"500,%
set number
set visualbell
set wildignore=*.pyc,*.gif,*.png,*.jpg
set wildmenu
set wildmode=list:longest
set textwidth=0
set nocp
set foldlevelstart=99
set ignorecase
"set emacsbuflist

filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
syntax enable
colorscheme desert

if has("gui_running")
    "set columns=180
    "set lines=50
    let g:Tlist_Inc_Winwidth=0
    set path+=**
    colorscheme default
endif

set fileencodings=utf-8,iso-8859-1,latin-1,8bit-MacRoman
set fileencoding=utf-8

set termencoding=utf-8
set encoding=utf-8
set linebreak

autocmd BufEnter * lcd %:p:h

autocmd BufNewFile *.py :set ts=4

autocmd BufEnter *.upt,*.html,*.pt,*.zpt,*.dtml,*.cpt,index_html :set syntax=html
autocmd BufEnter *.js,*.js.dtml :set syntax=javascript
autocmd BufEnter *.py,*.cpy,*.xpy :set syntax=python
autocmd BufEnter *.xml,*.zcml :set syntax=xml

autocmd FileType pt,cpt,zpt,html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" buffer navigation
map ,n :bp<CR>
map ,m :bn<CR>
map ,b :buffer 
map ,, :b #
map ,q :bdelete<CR>

" reloading .vimrc
map ,u :source ~/.vimrc<CR>
map ,v :e ~/.vimrc<CR>

" comments
map ,# :s/^/#/<CR>:nohlsearch<CR>
map ," :s/^/"/<CR>:nohlsearch<CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"]//<CR>:nohlsearch<CR>

" no highlight search
map ,s :nohlsearch<CR>

" latex stuff - do not show completions like <++>
let g:Imap_UsePlaceHolders = 0
let g:Imap_FreezeImap = 0

let g:SuperTabDefaultCompletionType = "context"
let g:Tex_CompileRule_dvi = 'pdflatex --interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = "pdf"

iab ,s \begin{}<Esc>i
iab ,e \end{}<Esc>i

set noswapfile
set ttyfast

