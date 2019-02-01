" Plug plugins
call plug#begin()
Plug 'roxma/nvim-completion-manager'
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
call plug#end()

" Mundo Undo tree
noremap <F5> :MundoToggle<CR>

" Colorscheme and adjustments
colorscheme monokai-phoenix
hi Normal guibg=NONE ctermbg=NONE

"keep view
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']

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

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 ctermbg=none term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap ctermfg=none ctermbg=none
