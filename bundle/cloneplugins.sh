#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
sudo npm install -g jshint
sudo apt-get install silversearcher-ag python-dev cmake -y
git clone https://github.com/rking/ag.vim ag
git clone https://github.com/vim-scripts/dbext.vim.git
git clone https://github.com/Raimondi/delimitMate.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/Shougo/unite.vim.git
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/tpope/vim-fugitive.git
git clone git://github.com/airblade/vim-gitgutter.git
git clone git://github.com/nathanaelkane/vim-indent-guides.git
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax
git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim && cd ~/.vim/bundle/vimproc.vim && make && cd ~/.vim/bundle
git clone https://github.com/mhinz/vim-startify ~/.vim/bundle/vim-startify
git clone https://github.com/Valloric/YouCompleteMe.git && cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.sh


vim +Helptags
