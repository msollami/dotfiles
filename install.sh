#!/bin/sh
cwd=$PWD
cd $HOME

echo "Removing old dotfiles"
rm -f .zshrc 
rm -f .zsh_aliases
rm -f .zsh_functions
rm -f .vimrc
rm -f .tmux.conf
rm -f .gitignore
rm -f $HOME/.ipython/profile_default/ipython_config.py 

echo "Installing new dotfiles"
ln -s $cwd/.zshrc .zshrc
ln -s $cwd/.zsh_aliases .zsh_aliases
ln -s $cwd/.zsh_functions .zsh_functions
ln -s $cwd/.vimrc .vimrc
ln -s $cwd/.tmux.conf .tmux.conf
ln -s $cwd/.gitignore .gitignore

install -d $HOME/.ipython/profile_default
cd $HOME/.ipython/profile_default/
ln -s $cwd/ipython_config.py ipython_config.py

cd $cwd

