filetype off                  " required
filetype plugin indent on    " required

set rtp+=~/.vim/bundle/Vundle.vim

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

  " neocomplete Plugin
  Plugin 'Shougo/neocomplete.vim'

  Plugin 'neoclide/coc.nvim'

  " Buffer
  Plugin 'jeetsukumaran/vim-buffergator'

  Plugin 'nestorsalceda/vim-strip-trailing-whitespaces'

  " Themes
  Plugin 'erichdongubler/vim-sublime-monokai'
call vundle#end()            " required

set encoding=UTF-8
set number
set showtabline=0
set nocompatible              " be iMproved, required
set relativenumber
set clipboard=unnamed
" set timeoutlen=10

syntax on
colorscheme sublimemonokai

autocmd StdinReadPre * let s:std_in=1

nmap <Up> <nop>
nmap <Down> <nop>
nmap <Left> <nop>
nmap <Right> <nop>

nmap <space> <leader>
nmap <leader>ff :Files<CR>
nmap <leader>fF :Rg<CR>
nmap <leader>r :NERDTreeToggle<CR>
nmap <leader>R :NERDTreeFind<CR>
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
