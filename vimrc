set nu
sy on

let mapleader = ','

call plug#begin('~/.vim/plugged') 
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Add plugins to &runtimepath

Plug 'Shougo/neocomplete.vim'

"Plug 'mitsuse/autocomplete-swift'
Plug 'sheerun/vim-polyglot' 
Plug 'toyamarinyon/vim-swift'
Plug 'keith/swift.vim'
Plug 'scrooloose/syntastic'
"Plug 'tokorom/syntastic-swiftlint.vim'
"

" Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/gist-vim'
"Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-surround'
Plug 'wakatime/vim-wakatime'
Plug 'ternjs/tern_for_vim'
Plug 'vim-scripts/ag.vim'

Plug 'shawncplus/phpcomplete.vim'
Plug 'majutsushi/tagbar'

" Plug 'wesQ3/vim-windowswap'
Plug 'digitaltoad/vim-pug'
Plug 'maksimr/vim-jsbeautify'
Plug 'vimwiki/vimwiki'

Plug 'mattn/webapi-vim'
Plug 'myusuf3/numbers.vim'

call plug#end()

" Jump to the first placeholder by typing `<C-k>`.
autocmd FileType swift imap <buffer> <C-k> <Plug>(autocomplete_swift_jump_to_placeholder)


inoremap jj <Esc>:w<CR>
noremap qq <Esc>:q!<CR>


" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:github_dashboard = { 'username':'hueby', 'password': $GITHUB_TOKEN }

" Dashboard window position
" " - Options: tab, top, bottom, above, below, left, right
" " - Default: tab
let g:github_dashboard['position'] = 'top'

set tabstop=2 shiftwidth=2 expandtab

nmap <leader>7 :TComment<CR>
:set mouse=a
:set backspace=indent,eol,start

noremap <C-n> <Esc>:NERDTreeToggle<CR>

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
