" classic
sy on
set nu

filetype plugin on
let mapleader = ","
""autocmd VimEnter * NERDTree

if (getcwd() == '~/AppCode/findr-ios')
  set makeprg=xcodebuild\ -workspace\ Findr.xcworkspace\ -scheme\ Findr\ -configuration\ Debug\
endif

" Py3 support
let g:python_host_prog = '/usr/local/bin/python'
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'
"let g:python3_host_prog = '/usr/local/bin/python3'
"let g:loaded_python_provider = 1
"let g:loaded_python3_provider = 1
"let g:python_host_skip_check = 1
"let g:deoplete#enable_at_startup = 1

" plug.vim

call plug#begin('~/.nvim/plugged')

Plug 'keith/swift.vim'
Plug 'soramugi/auto-ctags.vim'
Plug 'msanders/cocoa.vim'
Plug 'eraserhd/vim-ios'

" JSHint
"Plug 'wookiehangover/jshint.vim'

" tComment cool
Plug 'vim-scripts/tComment'

Plug 'myhere/vim-nodejs-complete'

Plug 'moll/vim-node'

" SnipMate
"Plug 'msanders/snipmate.vim'

" Group dependencies, vim-snippets depends on ultisnips

Plug 'majutsushi/tagbar'

Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'junegunn/vim-github-dashboard'

" Code completion
Plug 'Shougo/deoplete.nvim'

" Neomake
Plug 'benekastah/neomake'

" Asynchronous build
Plug 'tpope/vim-dispatch'   

" Awesome Ctrl-P INSTALL MANUAL!
Plug 'kien/ctrlp.vim'

" m./h. switching
"Plug 'eraserhd/vim-ios'

"Plug 'rking/ag.vim'  " ag support for searching file

Plug 'Raimondi/delimitMate'    " Automatically insert closing brackets

Plug 'tpope/vim-surround' 

Plug 'qstrahl/vim-matchmaker'   " Highlight the term under the cursor

Plug 'Chiel92/vim-autoformat'  " Auto-format code using existing formatters

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

Plug 'vim-airline/vim-airline'

Plug 'jeetsukumaran/vim-buffergator'

Plug 'wakatime/vim-wakatime'

 Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
" Plug 'marijnh/tern_for_vim', {'do': 'npm install'}

call plug#end()

colorscheme gruvbox
set background=dark

" UltiSnips config
"inoremap <silent><expr><TAB> pumvisible() ? '\<C-n>' : '\<TAB>'
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" airline config
let g:airline_powerline_fonts = 1

" NERDtree conf
map <C-n> :NERDTreeToggle<CR>


"""""""""" tab management

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

nmap <leader>k :tabnext<CR>
nmap <leader>j :tabprevious<CR>

" very very very nice splitting one file into more buffers
noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

" T
nmap <leader>7 :TComment<CR>

" i have no idea
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P

set clipboard=unnamed

" for more editing space
set tabstop=2 shiftwidth=2 expandtab

nmap <F8> :TagbarToggle<CR>

" Move lines around ...
function! Sp(dir, ...)
  let split = 'sp'
  if a:dir == '1'
    let split = 'vsp'
  endif
  if(a:0 == 0)
    execute split
  else
    let i = a:0
    while(i > 0)
      execute 'let files = glob (a:' . i . ')'
      for f in split (files, "\n")
        execute split . ' ' . f
      endfor
      let i = i - 1
    endwhile
    windo if expand('%') == '' | q | endif
endif
endfunction
com! -nargs=* -complete=file Sp call Sp(0, <f-args>)
com! -nargs=* -complete=file Vsp call Sp(1, <f-args>)

" Solves YCM UltiSnips Sh8
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:neomake_javascript_jscs_maker = {
    \ 'exe': 'jscs',
    \ 'args': ['--no-color', '--preset', 'airbnb', '--reporter', 'inline', '--esnext'],
    \ 'errorformat': '%f: line %l\, col %c\, %m',
    \ }

let g:neomake_javascript_enabled_makers = ['jscs']


let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_open_list = 2

" Ruby idention
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd FileType ruby compiler ruby

" vim-ruby completions
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead *.rabl     set filetype=ruby
autocmd User Rails                    silent! Rlcd
autocmd User Rails                    silent! Rvm

autocmd BufEnter ~/AppCode/findr-ios/* :setlocal tags+=~/AppCode/findr-ios/tags

if has("autocmd")
  autocmd BufNewFile,BufRead *.h,*.m set tags+=~/Documents/global-objc-tags
endif

let g:tagbar_type_swift = {
  \ 'ctagstype': 'swift',
  \ 'kinds' : [
    \ 'n:Enums',
    \ 't:Typealiases',
    \ 'p:Protocols',
    \ 's:Structs',
    \ 'c:Classes',
    \ 'f:Functions',
    \ 'v:Variables',
    \ 'e:Extensions'
  \ ],
  \ 'sort' : 0
  \ }

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

call NumberToggle()
" nnoremap <C-n> :call NumberToggle()<cr>

:au FocusLost * :set number
:au FocusGained * :set relativenumber