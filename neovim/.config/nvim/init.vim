" ==============================================================================
" ==============================================================================
"   Eric's .vimrc
" ==============================================================================
" ==============================================================================
"
" Run vim/gvim with -S like this to have a custom vimrc
"     gvim -S /home/eric/.vimrc

" or, even better,
"     alias vi 'vim --cmd "set runtimepath^=/home/eric/.vim" -u /home/eric/.vimrc'

set runtimepath^=/home/eric/.config/nvim
set runtimepath+=/home/eric/.config/nvim/after
let &packpath = &runtimepath

let mapleader = " "

" ==============================================================================
" vim-plug -- Plugin Manager
" ==============================================================================
call plug#begin('/home/eric/.local/share/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'

" =============================================================================
" NerdTree
" =============================================================================
Plug 'scrooloose/nerdtree'
"nnoremap <leader>n <C-w>v :Ex .<CR> <C-w>H :vertical resize 30<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

" ==============================================================================
" vim-peekaboo -- Shows register contents
" ==============================================================================
Plug 'junegunn/vim-peekaboo'

" =============================================================================
" FZF - fuzzy finder
" =============================================================================
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :Files<CR>

" =============================================================================
" Vim Airline
" =============================================================================
Plug 'vim-airline/vim-airline'
" Automatically display all buffers when there's only one tab.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Use powerline symbols
let g:airline_powerline_fonts = 0

let g:airline#extensions#whitespace#enabled = 1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'justinmk/vim-gtfo' " Go to file in browser 'gof'
Plug 'neovim/nvim-lspconfig'

" ================================================================================
" = Auto-Completion via nvim-cmp
" ================================================================================
Plug 'neovim/nvim-lspconfig' "-- Collection of configurations for built-in LSP client
Plug 'hrsh7th/nvim-cmp' "-- Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp' "-- LSP source for nvim-cmp
Plug 'saadparwaiz1/cmp_luasnip' "-- Snippets source for nvim-cmp
Plug 'L3MON4D3/LuaSnip' "-- Snippets plugin

call plug#end()

" ================================================================================
" = Colors
" ================================================================================
if (has("termguicolors"))
    set termguicolors
endif

" Automatically jump to last visited line
" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
  autocmd!
  " In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
  autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
  " start with spec file template
  autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
  augroup END
endif

" -----------------------------------------------------------------------------
" Basic settings
" -----------------------------------------------------------------------------
" Store edit locations and other stateful vim info
set shada=!,'100,<50,s10,h
set clipboard+=unnamedplus
" Show line numbers
set number
set rnu
set autoindent
set smartindent
" Show preview lines when scrolling
set scrolloff=5
" Add all files under current dir to the path.
set path+=**
" Filename completion
set wildmode=list:longest,full
set wildmenu
set wildignore=*.0,*~,*.class,*.o
" Always show a status line
set laststatus=2
"Format the status line - this overrides 'set ruler'
set statusline=\ %f%m%r\ %=%y\ %l:%c\ %p%%\ \ 
" Allow backspace over hidden chars
set backspace=eol,start,indent
" Left and right arrow keys wrap to next line when used at the beginning or
" end of lines.
set whichwrap+=<,>
" New splits open below and right of existing buffers
set splitbelow
set splitright
" Update terminal title
set title
" Do not produce terminal error bells
set noerrorbells
" tabstop - How many columns '\t' chars occupy
"set tabstop=4
" When pressing tab, how many columns are inserted
set softtabstop=4
" How many columns are modified when performing shift command
set shiftwidth=4
" Insert spaces instead of tabs
set expandtab
" Show which mode we're in (Insert/Replace/Visual)
set showmode
" Show partial commands as they're entered
set showcmd
set virtualedit=block
set hidden
set ignorecase smartcase
set hlsearch
set incsearch
"set colorcolumn=80
"set backupdir=/tmp//,.
"set directory=/tmp//,.
set nostartofline
set tags+=.tags


if has("gui_running")
   set guioptions-=T
   set guioptions-=e
   set guitablabel=%M\ %t
   set guifont=Operator\ Mono\ 13
endif
" Work around broken plugins
set guicursor=

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set pastetoggle=<F2>

execute "set titleold=" . expand("$USER") . "@" . hostname()

" ==============================================================================
" Key mappings
" ==============================================================================
command! MakeTags !ctags -f .tags -R .

nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap H ^
nnoremap L $
inoremap jk <Esc>
inoremap jj <Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>

nnoremap <leader>w :update<CR>
nnoremap <leader><SPACE> :noh<CR>
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Paste previously yanked text over current visual selection
xnoremap <leader>p "_dP

" Find and replace (whole file)
" automatically inserts highlighted text as the search
" value (no partial matches)
nnoremap <leader>fr :%s/\<<C-r><C-w>\>//g<left><left>

" Moving lines
" ------------------------------------------------------------------------------
    " move highlighted lines up/down in vertical select mode
    "vnoremap J :m '>+1<CR>gv=gv
    "vnoremap K :m '<-2<CR>gv=gv
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>

" =============================================================================
" Language Server Protocol (LSP)
" =============================================================================
lua require('lsp-setup')

" =============================================================================
" Automatic night-mode
" =============================================================================
function! LightMode()
    set background=light
    colorscheme gruvbox
endfunction

function! DarkMode()
    set background=dark
    colorscheme dracula
endfunction

function! ChangeColorScheme(timer)
    let hour = system('date +%H')
    if hour > 6 && hour < 20
        call LightMode()
    else
        call DarkMode()
    endif
endfunction

function! AutoColorSetup()
    let timer = timer_start(30000, 'ChangeColorScheme', {'repeat': -1})
    call ChangeColorScheme(timer)
endfunction

call AutoColorSetup()

