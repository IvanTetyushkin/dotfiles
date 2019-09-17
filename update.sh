#!/bin/bash
echo "go to home dir"
cd


declare -a syncFiles=(
.bashrc
.vimrc
.screenrc
.tmux.conf
bin/tmux-session  # from https://github.com/mislav/dotfiles
)

for index in ${!syncFiles[*]}
do
	echo "work with ${syncFiles[$index]}"
	cp -u dotfiles/${syncFiles[$index]} ${syncFiles[$index]}
done

