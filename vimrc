set nu
sy on

set nocompatible              " be iMproved, required
filetype off                  " required
set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.


let mapleader = ','
set background=dark
colorscheme solarized

set tags=tags;

" setlocal omnifunc=phpcomplete#CompletePHP

call plug#begin($HOME.'/.vim/plugged') 
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'joonty/vdebug' "Plugin
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/syntastic'

Plug 'Raimondi/delimitMate'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/gist-vim'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-surround'
Plug 'wakatime/vim-wakatime'
Plug 'ternjs/tern_for_vim'
" Plug 'vim-scripts/ag.vim'

" Plug 'shawncplus/phpcomplete.vim'
Plug 'majutsushi/tagbar'

" Plug 'wesQ3/vim-windowswap'
Plug 'digitaltoad/vim-pug'
" Plug 'maksimr/vim-jsbeautify'
Plug 'vimwiki/vimwiki'

Plug 'mattn/webapi-vim'
" Plug 'myusuf3/numbers.vim'
" Plug 'kien/tabman.vim'
Plug 'mattn/calendar-vim'
Plug 'wikitopian/hardmode'
Plug 'terryma/vim-multiple-cursors'
" Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plug 'itchyny/calendar.vim'
" Plug 'jeetsukumaran/vim-buffergator'
" Plug 'severin-lemaignan/vim-minimap'
Plug 'bling/vim-bufferline'
" Plug 'troydm/easybuffer.vim'
 Plug 'ap/vim-buftabline'
" Plug 'corntrace/bufexplorer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'xolox/vim-session' "For sessions
Plug 'xolox/vim-misc' "Plugin
Plug 'tpope/vim-fugitive' "Plugin
Plug 'szw/vim-g' "Plugin Google inside vim

call plug#end()
"set rtp+=/usr/local/bin/fzf
filetype plugin indent on

" Ack uses Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" Ultisnips
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsEditSplit="vertical"

inoremap jj <Esc>:w<CR>
noremap qq <Esc>:q!<CR>

" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:github_dashboard = { 'username':'hueby', 'password': $GITHUB_TOKEN }

" Dashboard window position
" " - Options: tab, top, bottom, above, below, left, right
" " - Default: tab
let g:github_dashboard['position'] = 'top'

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

nmap <leader>7 :TComment<CR>
:set mouse=a
" Configure backspace so it acts as it should act
set backspace=2 " make backspace work like most other apps
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

" noremap <C-n> <Esc>:NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:vimwiki_list = [{'path' : '$HOME/Dropbox/vimwiki'}]

let g:syntastic_javascript_checkers = ['eslint']

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

nnoremap <leader>b <Esc>:CtrlPBuffer<CR>
nnoremap <leader>f <Esc>:bprev<CR>
nnoremap <leader>g <Esc>:bnext<CR>
nnoremap <leader>c <Esc>:bdelete<CR>

nnoremap <F8> :TagbarToggle<CR>
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

let g:ycm_use_ultisnips_completer = 1
let g:ycm_min_num_of_chars_for_completion = 3

" For YouCompleteMe messes
set shortmess+=c

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set so=0
let g:UltiSnipsSnippetsDir=$HOME."/.vim/Ultisnips"
" let g:UltiSnipsSnippetsDirectories=["Ultisnips"]

" vimsession config

let g:session_autoload = "no"
let g:session_autosave = "no"
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession

" EasyAlign config
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


let g:vdebug_options= {
      \    "port" : 9133,
      \    "timeout" : 20,
      \    "break_on_open" : 0,
      \    "on_close" : 'detach',
      \    "ide_key" : '',
      \    "path_maps" : {},
      \    "debug_window_level" : 0,
      \    "debug_file_level" : 0,
      \    "debug_file" : "",
      \    "watch_window_style" : 'expanded',
      \    "marker_default" : '⬦',
      \    "marker_closed_tree" : '▸',
      \    "marker_open_tree" : '▾'
      \}
