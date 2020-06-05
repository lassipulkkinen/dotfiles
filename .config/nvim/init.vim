" ~/.config/nvim/init.vim

" Include system defaults

source /usr/share/vim/vim82/defaults.vim

" Plugins

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'joshdick/onedark.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'Zaptic/elm-vim'
Plug 'tikhomirov/vim-glsl'
Plug 'pangloss/vim-javascript'
Plug 'lervag/vimtex'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'

call plug#end()

" Indentation tweaks

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smarttab

" Soft wrapping tweaks

set linebreak
set breakindent

" Line numbers

set number
set relativenumber
set signcolumn=no

" Enable hidden buffers

set hidden

" Completion tweaks

set completeopt+=noselect

" Highlighting scheme

set termguicolors
colorscheme onedark

" Sign tweaks

sign define ALEWarningSign numhl=ALEWarningSign
sign define ALEErrorSign numhl=ALEErrorSign
sign define ALEStyleWarningSign numhl=ALEStyleWarningSign
sign define ALEStyleErrorSign numhl=ALEStyleErrorSign
sign define ALEInfoSign numhl=ALEInfoSign

" Highlighting tweaks

highlight Normal guibg=NONE
highlight Pmenu guifg=darkgray guibg=black
highlight PmenuSel gui=bold guifg=black guibg=gray
highlight Todo gui=bold guifg=#E5C07B
highlight Error gui=underline guifg=#E06C75
highlight SpellCap gui=underline guifg=#E5C07B
highlight ALEWarningSign gui=bold guifg=#282C34 guibg=#E5C07B
highlight ALEErrorSign gui=bold guifg=#282C34 guibg=#E06C75
highlight link ALEStyleWarningSign ALEWarningSign
highlight link ALEStyleErrorSign ALEErrorSign
highlight ALEInfoSign gui=bold guifg=#282C34 guibg=#ABB2BF

" Yes, this counts as a 'highlighting tweak'
set nohlsearch

" ALE tweaks

let g:ale_linters = {
  \ 'c': ['ccls'],
  \ 'cpp': ['ccls'],
  \ 'python': ['pyls', 'flake8'],
  \ 'rust': ['rls'],
  \}

let g:ale_python_auto_pipenv = 1
let g:ale_tex_chktex_options = "-I -n3"

" Deoplete tweaks

let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('omni_patterns', {
  \ 'tex': ['\\'],
  \})

" NERDTree tweaks

let NERDTreeMinimalUI = 1

" Key mapping tweaks

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <M-h> <C-w>H
nnoremap <M-j> <C-w>J
nnoremap <M-j> <C-w>K
nnoremap <M-l> <C-w>L

" Who needs help?
nmap <silent> <F1> :NERDTreeToggleVCS %:p:h<CR>
imap <silent> <F1> <ESC>:NERDTreeToggleVCS %:p:h<CR>

nmap <silent> <F2> :FZF<CR>

nmap <silent> <F3> :ALEGoToDefinition<CR>

" Tab completion
imap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr> <S-TAB> pumvisible() ? "\<C-p>" : ""
imap <expr> <C-SPACE> deoplete#manual_complete()

" Treat *.h files as C, not C++. I'm not going to open a C++ file anyway...
autocmd BufNewFile,BufRead *.h set filetype=c

" Remove trailing whitespace from source files on save

autocmd FileType c,elm,java,javascript,python,ruby,rust,tex,vim
  \ autocmd BufWritePre <buffer> %s/\s\+$//e

" Hide statusline in fzf

autocmd FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Close preview windows when leaving insert mode

autocmd InsertLeave * pclose
