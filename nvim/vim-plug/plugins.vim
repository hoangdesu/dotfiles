" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'https://github.com/preservim/nerdtree' 
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'morhetz/gruvbox'
    Plug 'artanikin/vim-synthwave84'
    Plug 'junegunn/goyo.vim'

    Plug 'preservim/nerdcommenter'
call plug#end()
