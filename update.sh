#!/bin/bash
echo "go to home dir"
cd


declare -a syncFiles=(
.bashrc
.vimrc
.screenrc
.gitconfig
)

for index in ${!syncFiles[*]}
do
	echo "work with ${syncFiles[$index]}"
	cp -u dotfiles/${syncFiles[$index]} ${syncFiles[$index]}
done

