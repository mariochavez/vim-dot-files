Install
========

    cd ~
    git clone git@github.com:mariochavez/vim-dot-files.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    git submodule init
    git submodule update

Update
========

    git submodule foreach git pull origin master


Install new plugin
==========
cd ~/.vim
mkdir ~/.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."


VIM Room
==========
Info: http://projects.mikewest.org/vimroom/

    <leader>V
