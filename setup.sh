#! /bin/sh

PROJ_DIR=$(dirname "$(readlink -f "$0")")
ROOT_DIR=$pwd

cd $PROJ_DIR

# vundle plug-in manager
git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim

# symlinks
mkdir -p ~/.vim/bundle/
ln -sr Vundle.vim ~/.vim/bundle/Vundle.vim
ln -sr vimrc ~/.vimrc

vim +PluginInstall

cd $ROOT_DIR

echo "setup done!"
