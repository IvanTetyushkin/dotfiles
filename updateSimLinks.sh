#!/bin/bash 
echo "go to home dir"   
cd  

echo "work config.git"
rm .gitconfig
ln -s dotfiles/config.git .gitconfig
echo "work config.vim"
rm .vimrc
ln -s dotfiles/config.vim .vimrc
echo "work config.tmux"
rm .tmux.conf
ln -s dotfiles/config.tmux .tmux.conf
echo "work config.screen"
rm .screenrc
ln -s dotfiles/config.screen .screenrc

