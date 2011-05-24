" Detect filetypes
filetype plugin indent on

" ViImprove mode
set nocompatible

" Syntax highlight on
syntax enable

" Run pathogen for load all plugins
call pathogen#runtime_append_all_bundles()

" Show cursor position
set ruler

" Set leader key
let mapleader = "\\"

" Show line numbers
set number

nmap <Leader>n <ESC>:set number!<cr>

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Show status bar
set laststatus=2

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,.DS_Store

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Color scheme
if has("gui_running")
  set background=light
else
  set background=dark
  let g:solarized_termcolors=256
end

colorscheme solarized

" Disable swaping files
set noswapfile

" Disable a help key and add switching theme mode
call togglebg#map("<F1>")

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
