set nu
set autoindent


set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on
" set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set softtabstop=0
set shiftwidth=4
set tabstop=4

set path+=**
set hidden

let mapleader=','
set completeopt+=preview
set wildmenu
set wildchar=<Tab>
set wildmode=full
set wildignore+=tmp\*,*.swp,*.zip,*.exe,*\.settings\*,\.classpath,\.project,*.class,\.springBeans,bin\*,target\*,*.jar,*\.git\*

set tags=tags;

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd! BufWritePost,BufEnter *.php Neomake
autocmd! BufRead,BufWrite,BufEnter *.js Neomake

call plug#begin($HOME.'/.vim/plugged') 
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'joonty/vdebug' "Plugin

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --racer-completer', 'for': [ 'javascript', 'swift', 'rust'] }
" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'for': 'go' }

" Plugin options
Plug 'nsf/gocode', { 'for': 'go' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/syntastic' , { 'for': ['rust', 'json', 'go', 'swift'] , 'on': 'Ycm'}
Plug 'nathanaelkane/vim-indent-guides' "Plugin
Plug 'Raimondi/delimitMate'
Plug 'eapache/rainbow_parentheses.vim'
Plug 'ctrlpvim/ctrlp.vim', {'on': 'CtrlP'}
Plug 'mattn/gist-vim'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-surround'
Plug 'wakatime/vim-wakatime'
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'vim-scripts/ag.vim'

" Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
Plug 'majutsushi/tagbar'

Plug 'digitaltoad/vim-pug' , { 'for': ['pug', 'jade']}
Plug 'vimwiki/vimwiki'

Plug 'mattn/webapi-vim'
Plug 'myusuf3/numbers.vim'
Plug 'wikitopian/hardmode'
Plug 'terryma/vim-multiple-cursors'
Plug 'jeetsukumaran/vim-buffergator'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion' "Plugin
Plug 'mileszs/ack.vim'
Plug 'xolox/vim-session' "For sessions
Plug 'xolox/vim-misc' "Plugin
Plug 'tpope/vim-fugitive' "Plugin

Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'othree/jspc.vim'
Plug 'moll/vim-node', { 'for': ['json', 'javascript'] }
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript'} "Plugin
" Plug 'Shutnik/jshint2.vim', { 'for': 'javascript'}"Plugin
Plug 'malithsen/trello-vim' "Plugin
Plug 'suan/vim-instant-markdown', { 'for': 'markdown'} "Plugin
Plug 'othree/xml.vim', { 'for': 'xml' } "Plugin
Plug 'Ron89/thesaurus_query.vim' , { 'for': 'markdown' }
Plug 'mustache/vim-mustache-handlebars' , { 'for': 'html' }
" Plug 'dsawardekar/ember.vim' "Plugin
Plug 'junegunn/goyo.vim' , { 'for': 'markdown' }
Plug 'junegunn/limelight.vim' , { 'for': 'markdown' }"Plugin
Plug 'tpope/vim-unimpaired' "Plugin
Plug 'tpope/vim-heroku' "Plugin
Plug 'nelstrom/vim-visual-star-search' "Plugin
Plug 'nelstrom/vim-markdown-folding'
Plug 'vim-pandoc/vim-pandoc' , { 'for': 'markdown' } "Plugin
" Plug 'vim-pandoc/vim-pandoc-syntax' "Plugin
Plug 'jlevesy/rust.vim' , { 'for': 'rust' } "Plugin
" Plug 'jFransham/rust.vim' "Plugin
" Plug 'timonv/vim-cargo' "Plugin
Plug 'Nonius/cargo.vim' , { 'for': 'rust' }"Plugin
" Plug 'burnettk/vim-angular' "Plugin

Plug 'tpope/vim-dispatch' "Plugin
Plug 'neomake/neomake' "Plugin
Plug 'keith/investigate.vim' "Plugin

Plug 'dbakker/vim-lint' "Plugin
Plug 'phildawes/racer' "Plugin
Plug 'racer-rust/vim-racer' "Plugin

" Plug 'vim-php/tagbar-phpctags.vim', {'for': 'php'} "Plugin
" Plug 'DanielSiepmann/phpstorm-stubs', {'for': 'php'}
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'shawncplus/phpcomplete.vim', {'for': 'php'} 

" Plug 'Shougo/neocomplete.vim', {'for': 'php'} "Plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'padawan-php/deoplete-padawan', {'for':'php'}
Plug 'soulston/vim-listtrans' "Plugin
Plug 'beanworks/vim-phpfmt', {'for': 'php'} "Plugin
Plug '~/.vim/plugins/foldsearches.vim' "Plugin
" Plug 'Rican7/php-doc-modded'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv', {'for': 'php' }
Plug 'ludovicchabant/vim-gutentags'

Plug 'heavenshell/vim-jsdoc'




call plug#end()

set rtp+=~/.fzf

" Jump to end of a fold GG
nmap z] zo]z
nmap z[ zo[z
nnoremap <Space> za
vnoremap <Space> za

set hlsearch

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree', 'goyo']
let g:instant_markdown_autostart = 0
noremap ,im :InstantMarkdownPreview<CR>


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" Ultisnips
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsEditSplit="vertical"

inoremap jj <Esc>:w<CR>
noremap qq <Esc>:q!<CR>


nmap <leader>7 :TComment<CR>
vmap <leader>7 :TComment<CR>
:set mouse=a
" Configure backspace so it acts as it should act
set backspace=2 " make backspace work like most other apps
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

" noremap <C-n> <Esc>:NERDTreeToggle<CR>

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
let g:bufferline_echo = 0

let g:ycm_use_ultisnips_completer = 1
let g:ycm_min_num_of_chars_for_completion = 2

" For YouCompleteMe messes
set shortmess+=c

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set so=0
let g:UltiSnipsSnippetsDir=$HOME."/.vim/Ultisnips"

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


" Thesaurus

autocmd filetype crontab setlocal nobackup nowritebackup

" Limelight & Goyo
augroup filetype_markdown
    set thesaurus=/Users/dennis/.vim/thesaurus/mthesaur.txt
    let g:pandoc#spell#enabled = 0
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
    let g:limelight_conceal_ctermfg = 240
    let g:limelight_conceal_guifg = '#777777'
    " Default: 0.5
    let g:limelight_default_coefficient = 0.7
    nnoremap <leader>bb :Pandoc beamer --template=beamer.tex -o <C-R>=expand('%:r')<CR>.pdf<CR>
augroup end

let g:ycm_rust_src_path='/Users/dennis/git-repos/rust/src'

let g:rustfmt_autosave = 1

augroup filetype_rust
    let g:syntastic_rust_checkers = ['cargo']
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
augroup end

let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1
let g:neomake_rust_cargo_maker = {
            \ 'exe': 'cargo build',
            \ 'args': '',
            \ 'errorformat': '%f: line %l\, col %c\, %m',
            \ }
let g:neomake_rust_enabled_makers = ['cargo']

let g:neomake_php_phpcs_maker = {
            \ 'exe': 'phpcs',
            \ 'args':['--report=csv', '--standard=~/moodles/current/moodle/vendor/phpunit/dbunit/build/PHPCS/ruleset.xml'],
            \ 'errorformat':'%-GFile\,Line\,Column\,Type\,Message\,Source\,Severity%.%#,"%f"\,%l\,%c\,%t%*[a-zA-Z]\,"%m"\,%*[a-zA-Z0-9_.-]\,%*[0-9]%.%#',
            \ }

let g:neomake_php_enabled_makers = ['phpcs']

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_maker = {
            \ 'exe': '/usr/local/bin/eslint',
            \ 'args': ['--no-color', '--format', 'compact', '--config', '.eslintrc'],
            \ 'errorformat': '%f: line %l\, col %c\, %m'
            \ }

nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>s :w<CR> :so $MYVIMRC<CR>
nnoremap <leader>pi :w<CR> :so $MYVIMRC<CR> :PlugInstall<CR>
nnoremap <leader>pu :w<CR> :so $MYVIMRC<CR> :PlugUpdate<CR>
nnoremap <leader>pc :w<CR> :so $MYVIMRC<CR> :PlugClean<CR>

highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" Folding
set fdm=indent
set foldlevelstart=20
nnoremap <F5> zM

" Syntax Highlighting
nnoremap <leader>+ :sy on<CR>
nnoremap <leader>- :sy off<CR>

let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1

let g:phpcomplete_index_composer_command = "composer"

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nnoremap # :FZF<CR>

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php =
            \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

nmap ;l :call ListTrans_toggle_format()<CR>
vmap ;l :call ListTrans_toggle_format('visual')<CR>

sy off

autocmd BufRead *.wiki :sy on

" Edit highlighted folds
highlight Folded ctermfg=cyan ctermbg=black

" Toggle on off
nmap <silent> <expr> zz FS_ToggleFoldAroundSearch({'context':1})

" Show only sub defns (and maybe comments)...
let perl_sub_pat = '^\s*\%(abstract\|function\|class\)\s\+\k\+'
let vim_sub_pat  = '^\s*fu\%[nction!]\s\+\k\+'
augroup FoldSub
    autocmd!
    autocmd BufEnter * nmap <silent> <expr>  zp  FS_FoldAroundTarget(perl_sub_pat,{'context':1})
    autocmd BufEnter * nmap <silent> <expr>  za  FS_FoldAroundTarget(perl_sub_pat.'\zs\\|^\s*#.*',{'context':0, 'folds':'invisible'})
    autocmd BufEnter *.vim,.vimrc nmap <silent> <expr>  zp  FS_FoldAroundTarget(vim_sub_pat,{'context':1})
    autocmd BufEnter *.vim,.vimrc nmap <silent> <expr>  za  FS_FoldAroundTarget(vim_sub_pat.'\\|^\s*".*',{'context':0, 'folds':'invisible'})
    autocmd BufEnter * nmap <silent> <expr>             zv  FS_FoldAroundTarget(vim_sub_pat.'\\|^\s*".*',{'context':0, 'folds':'invisible'})
augroup END

nnoremap <F1> :b 

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines

set modelines=0

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let g:pdv_template_dir = $HOME . "/.vim/plugged/pdv/templates_snip"
nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>

set guifont=Ubuntu\ Mono\ derivative\ Powerline:h18

let g:phpfmt_standard = "~/moodles/current/moodle/vendor/phpunit/dbunit/build/PHPCS/ruleset.xml"

" neomake
" nmap lc :lclose<CR>     " close location window
" nmap lo :lopen<CR>      " open location window
" nmap ec :ll<CR>         " go to current error/warning
" nmap en :lnext<CR>      " next error/warning
" nmap ep :lprev<CR>      " previous error/warning

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Resize splits with ease
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>
nnoremap <C-Up> :res +5<CR>
nnoremap <C-Down> :res -5<CR> 

let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3

command! StartPadawan call deoplete#sources#padawan#StartServer()
command! StopPadawan call deoplete#sources#padawan#StopServer()
command! RestartPadawan call deoplete#sources#padawan#RestartServer()

let g:deoplete#enable_at_startup = 1

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

noremap <leader>p :JsDoc<CR>
map <c-f> :call JsBeautify()<cr>

nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning
