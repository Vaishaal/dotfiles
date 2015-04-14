#!/bin/bash
git submodule update --init --recursive
echo "Setting up tmux \n"
ln -s ~/dotfiles/tmux-config/.tmux.conf ~/.tmux.conf
cd tmux-config/vendor/tmux-mem-cpu-load
cmake .
make
make install

cd ~/dotfiles
rm -rf ~/.oh-my-zsh

rm -rf ~/.vim
rm -rf ~/.vimrc
rm -rf ~/.emacs

ln -s `pwd`/.vim ~/.vim
ln -s `pwd`/.vim/.vimrc ~/.vimrc
ln -s `pwd`/.emacs ~/.emacs


curl -L https://raw.github.com/vaishaal/oh-my-zsh/master/tools/install.sh | sh
