" Plug plugins
call plug#begin('~/.config/nvim/plugged')
" Themes
Plug 'reewr/vim-monokai-phoenix'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'dawikur/base16-vim-airline-themes'
" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Utilities
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'christoomey/vim-tmux-navigator'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'mjakl/vim-asciidoc'
Plug 'vim-scripts/vim-auto-save'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/restore_view.vim'
Plug 'scrooloose/syntastic'
Plug 'mikewootc/vim-gtd'
Plug 'wikitopian/hardmode'
call plug#end()

let g:airline_powerline_fonts=1

" Mundo Undo tree
noremap <F5> :MundoToggle<CR>

" GTD plugin
let g:gtd#dir = '~/notes'

" Base16 Colorscheme and adjustments http://chriskempson.com/projects/base16/
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.config/nvim/colorscheme.vim
endif
autocmd VimEnter * hi Normal ctermbg=none
let g:airline_theme='base16_atelier_forest'


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

let g:vim_asciidoc_initial_foldlevel=1

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

let vimDir = '$HOME/.config/nvim'
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

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ ]




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
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
" easier quit
nmap <leader>q :q<cr>
" silence search highlighting
nnoremap <leader>sh :nohlsearch<Bar>:echo<CR>
"paste from outside buffer
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <leader>p <Esc>:set paste<CR>gv"+p:set nopaste<CR>
"Commit current file
nmap <C-g> :Git commit % -m "
"Copy last commit to clipboard
nnoremap <leader>c :! {git log --pretty=format:"\%h - \%s" -n 1 \| xsel -i -b}<CR>
"Push to upstream
nnoremap <leader>p :Git push <CR>
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

" Hard mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
