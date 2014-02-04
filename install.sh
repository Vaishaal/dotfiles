#!/bin/bash
git submodule update --init --recursive
echo "Setting up tmux \n"
ln -s ~/dotfiles/tmux-config/.tmux.conf ~/.tmux.conf
cd tmux-config/vendor/tmux-mem-cpu-load
cmake .
make
make install

cd ~/dotfiles
curl -L https://raw.github.com/vaishaal/oh-my-zsh/master/tools/install.sh | sh

ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vim/.vimrc ~/.vimrc

