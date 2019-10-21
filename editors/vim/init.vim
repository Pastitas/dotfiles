" Plug plugins
call plug#begin()
" Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'mjakl/vim-asciidoc'
Plug 'vim-scripts/vim-auto-save'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-fugitive'
Plug 'reewr/vim-monokai-phoenix'
Plug 'vim-scripts/restore_view.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mikewootc/vim-gtd'
call plug#end()

" let g:airline_powerline_fonts=1

" Mundo Undo tree
noremap <F5> :MundoToggle<CR>

" GTD plugin
let g:gtd#dir = '~/notes'

" Colorscheme and adjustments
colorscheme monokai-phoenix
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='serene'

"keep view
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']

" Use asciidoctor for checking syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_asciidoc_asciidoc_exec = 'asciidoctor'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


syntax on
set tabstop=4
filetype on
set nu
set ruler
set mouse=a
"set listchars=tab:\|\
set list
let g:ranger_replace_netrw = 1
set clipboard=unnamedplus
set relativenumber
set textwidth=79

let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

let g:auto_save = 1 

" Spell
set spell
set spell spelllang=en_us,es
set spellfile=~/.vim/spellfile.add

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"git diff in vertical
set diffopt+=vertical

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " " " Leader is the space key
let g:mapleader = " "
"auto indent for brackets
inoremap {<CR> {<CR>}<Esc>O
" easier write
nmap <leader>w :w!<cr>
" easier quit
nmap <leader>q :q<cr>
" silence search highlighting
nnoremap <leader>sh :nohlsearch<Bar>:echo<CR>
"paste from outside buffer
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <leader>p <Esc>:set paste<CR>gv"+p:set nopaste<CR>
"Commit current file
nnoremap <leader>g :Gcommit % -m "
"Copy last commit to clipboard
nnoremap <leader>c :! {git log --pretty=format:"\%h - \%s" -n 1 \| xsel -i -b}<CR>
"Push to upstream
nnoremap <leader>p :Gpush --set-upstream origin $(git_current_branch)<CR>
"copy to outside buffer
vnoremap <leader>y "+y
"select all
nnoremap <leader>a ggVG

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 ctermbg=none term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap ctermfg=none ctermbg=none

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
