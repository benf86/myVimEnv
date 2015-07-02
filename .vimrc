execute pathogen#infect()


syntax on
filetype indent on
colorscheme slate
set number
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set showmatch
set t_Co=256
set hlsearch
set hidden
set omnifunc=syntaxcomplete#Complete
let &colorcolumn="80"
highlight ColorColumn ctermbg=8 guibg=#111111

set viminfo='100,n$HOME/.vim/files/info/viminfo

imap <C-c> <CR><Esc>O

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <up> :tabnext<cr>
map <down> :tabprevious<cr>
map <left> :bprev<cr>
map <right> :bnext<cr>

map <space>h :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
map <space>v :vsplit<cr> :<C-u>Unite -start-insert file_rec/async<cr>

nmap Ha <Plug>GitGutterStageHunk
nmap Hu <Plug>GitGutterRevertHunk

map <c-g> :bd<cr>
map <c-o> :MBEToggle<cr>

map q :NERDTreeToggle<cr>

map <c-f> :Ag <c-r>=expand("<cword>")<cr><cr>
map <space>/ :Ag

inoremap <Nul> <C-n>

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_aggregate_errors = 1

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END


let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:javascript_enable_domhtmlcss  = 1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
