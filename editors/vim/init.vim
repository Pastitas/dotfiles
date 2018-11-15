call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'honza/vim-snippets'
call plug#end()

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

" Spell
set spell
set spell spelllang=en_us,es
set spellfile=~/.vim/spellfile.add

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 ctermbg=none term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap ctermfg=none ctermbg=none
