set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set relativenumber

call vundle#begin()
  " Visualization
  Plugin 'vim-airline/vim-airline'

  " Navigation
  Plugin 'rking/ag.vim'
  Plugin 'corntrace/bufexplorer'
  Plugin 'kien/ctrlp.vim'
  Plugin 'dockyard/vim-easydir'
  Plugin 'scrooloose/nerdtree'

  " Ruby & Rails  plugins
  Plugin 'tpope/vim-rails'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'bbatsov/rubocop'

  Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
  Plugin 'junegunn/fzf.vim'
  Plugin 'jiangmiao/auto-pairs'

  Plugin 'nestorsalceda/vim-strip-trailing-whitespaces'
call vundle#end()            " required

set encoding=UTF-8
set number

filetype plugin indent on    " required

syntax on
colorscheme gruvbox

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
