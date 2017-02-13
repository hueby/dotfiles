set nu
sy on
set autoindent

set nocompatible              " be iMproved, required
filetype off                  " required
set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.

set path+=**
set hidden

let mapleader = ','
set completeopt+=preview
set wildmenu
set clipboard=unnamed

set tags=tags;
set foldmethod=indent
" set omnifunc=phpcomplete#CompletePHP

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType rust let g:syntastic_rust_checkers = ['rustc']
autocmd FileType rust set foldmethod=manual

call plug#begin($HOME.'/.vim/plugged') 
  " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
  Plug 'junegunn/vim-easy-align'
  
  " Any valid git URL is allowed
  " Plug 'joonty/vdebug' "Plugin
  Plug 'https://github.com/junegunn/vim-github-dashboard.git'
  
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --racer-completer' }
  " Group dependencies, vim-snippets depends on ultisnips
   Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  
  " On-demand loading
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
  
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
  Plug 'eapache/rainbow_parentheses.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'mattn/gist-vim'
  Plug 'vim-scripts/tComment'
  Plug 'tpope/vim-surround'
  Plug 'wakatime/vim-wakatime'
  Plug 'ternjs/tern_for_vim'
  " Plug 'vim-scripts/ag.vim'
  
  Plug 'arnaud-lb/vim-php-namespace' "Plugin
  Plug 'shawncplus/phpcomplete.vim'
  Plug 'majutsushi/tagbar'
  
  " Plug 'wesQ3/vim-windowswap'
  Plug 'digitaltoad/vim-pug'
  " Plug 'maksimr/vim-jsbeautify'
  Plug 'vimwiki/vimwiki'
  
  Plug 'mattn/webapi-vim'
  Plug 'myusuf3/numbers.vim'
  " Plug 'kien/tabman.vim'
  Plug 'mattn/calendar-vim'
  Plug 'wikitopian/hardmode'
  Plug 'terryma/vim-multiple-cursors'
  " Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
  " Plug 'itchyny/calendar.vim'
  Plug 'jeetsukumaran/vim-buffergator'
  " " Plug 'severin-lemaignan/vim-minimap'
  " Plug 'bling/vim-bufferline'
  " Plug 'troydm/easybuffer.vim'
   " Plug 'ap/vim-buftabline'
  " Plug 'corntrace/bufexplorer'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
  Plug 'mileszs/ack.vim'
  Plug 'xolox/vim-session' "For sessions
  Plug 'xolox/vim-misc' "Plugin
  Plug 'tpope/vim-fugitive' "Plugin
  Plug 'szw/vim-g' "Plugin Google inside vim
  Plug 'floobits/floobits-neovim'
  
  Plug 'elzr/vim-json'
  Plug 'othree/jspc.vim'
  Plug 'moll/vim-node'
  Plug 'maksimr/vim-jsbeautify' "Plugin
  Plug 'Shutnik/jshint2.vim' "Plugin
  Plug 'malithsen/trello-vim' "Plugin
  Plug 'suan/vim-instant-markdown' "Plugin
  Plug 'othree/xml.vim' "Plugin
  Plug 'Ron89/thesaurus_query.vim'
  Plug 'dsawardekar/portkey' "Plugin
  Plug 'mustache/vim-mustache-handlebars' "Plugin
  " Plug 'dsawardekar/ember.vim' "Plugin
  Plug 'junegunn/goyo.vim' "Plugin
  Plug 'junegunn/limelight.vim' "Plugin
  Plug 'tpope/vim-unimpaired' "Plugin
  Plug 'tpope/vim-heroku' "Plugin
  Plug 'nelstrom/vim-visual-star-search' "Plugin
  Plug 'nelstrom/vim-markdown-folding'
  Plug 'vim-pandoc/vim-pandoc' "Plugin
  " Plug 'vim-pandoc/vim-pandoc-syntax' "Plugin
  Plug 'rust-lang/rust.vim' "Plugin
  Plug 'timonv/vim-cargo' "Plugin
  Plug 'racer-rust/vim-racer' " Rust autocompletion
  Plug 'leafgarland/typescript-vim' "Plugin
  Plug 'd11wtq/ctrlp_bdelete.vim' "Plugin

  Plug 'Shougo/vimproc.vim', {'do': 'make'} "Plugin
  Plug 'Quramy/tsuquyomi' "Plugin
  Plug 'chrisbra/Colorizer' "Plugin
  Plug 'malithsen/trello-vim' "Plugin
  Plug 'joonty/vim-phpqa' "Plugin

call plug#end()

" Jump to end of a fold GG
nmap z] zo]z
nmap z[ zo[z
nnoremap <Space> za
set nobackup
set nowritebackup
set noswapfile
set hlsearch

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree', 'goyo']
let g:instant_markdown_autostart = 0
noremap ,im :InstantMarkdownPreview<CR>

filetype plugin indent on

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" Ultisnips
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsEditSplit="vertical"

inoremap jj <Esc>:w<CR>
noremap qq <Esc>:q!<CR>

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

noremap <leader>n <Esc>:NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:vimwiki_list = [{'path' : '$HOME/Dropbox/vimwiki'}]


" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap <leader>f <Esc>:bprev<CR>
nnoremap <leader>g <Esc>:bnext<CR>
nnoremap <leader>c <Esc>:bdelete<CR>

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

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
      \    "port" : 9134,
      \    "server" : '',
      \    "timeout" : 20,
      \    "on_close" : 'detach',
      \    "break_on_open" : 0,
      \    "path_maps" : {},
      \    "debug_window_level" : 0,
      \    "debug_file_level" : 0,
      \    "debug_file" : "",
      \    "watch_window_style" : 'expanded',
      \    "marker_default" : '⬦',
      \    "marker_closed_tree" : '▸',
      \    "marker_open_tree" : '▾'
      \}

set wildignore+=**/node_modules/**
nnoremap <leader>y :find<space>


set cursorline
hi CursorLine term=bold cterm=bold ctermbg=000
nnoremap <leader>d :echo system("date")<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"Buffergator
  " Use the right side of the screen
  let g:buffergator_viewport_split_policy = 'R'
  " View the entire list of buffers open
  nmap <leader>bl :BuffergatorOpen<cr>

" JSHint
	let jshint2_save = 0
	let jshint2_load = 0

" Thesaurus
set thesaurus=/Users/dennis/.vim/thesaurus/mthesaur.txt

autocmd filetype crontab setlocal nobackup nowritebackup
let g:pandoc#spell#enabled = 0

" Limelight & Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'


" Default: 0.5
let g:limelight_default_coefficient = 0.7

nnoremap <leader>bb :Pandoc beamer -o <C-R>=expand('%:r')<CR>.pdf<CR>

let g:ycm_rust_src_path='/usr/local/rust/rustc-1.14.0/src'

let g:rustfmt_autosave = 1

call ctrlp_bdelete#init()


" " Syntastic
" let g:syntastic_aggregate_errors=1
" let g:syntastic_sort_aggregate_errors=1
" let g:syntastic_id_checkers=1
" let g:syntastic_cursor_column=1
" let g:syntastic_enable_signs=1
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_enable_highlighting=1
" let g:syntastic_error_symbol='x'
" let g:syntastic_warning_symbol='!'
" let g:syntastic_mode='active'
" let g:syntastic_php_checkers=1
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_mode_map={
" 			\'mode': 'active',
" 			\'active_filetypes': ['php'],
" 			\'passive_filetypes': []
" 			\}
" unlet g:syntastic_php_checkers
" let g:syntastic_php_checkers = ["php", "phpcs", "phpmd"]
" let g:syntastic_php_phpcs_args='--report=csv --standard=my_standard'
"
" augroup AutoSyntastic
" 	autocmd!
" 	autocmd BufWritePost *.php call s:syntastic()
" 	autocmd BufWritePost *.module call s:syntastic()
" 	autocmd BufWritePost *.install call s:syntastic()
" 	autocmd BufWritePost *.profile call s:syntastic()
" 	autocmd BufWritePost *.inc call s:syntastic()
" 	autocmd BufWritePost *.test call s:syntastic()
" augroup END
" function! s:syntastic()
" 	SyntasticCheck
" endfunction

let g:phpqa_codesniffer_args = "--standard=/Users/Dennis/moodles/current/moodle/local/codechecker/moodle/ruleset.xml"
