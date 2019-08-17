#!/bin/bash
echo "go to home dir"
cd


declare -a syncFiles=(
.bashrc
.vimrc
.screenrc
)

for index in ${!syncFiles[*]}
do
	echo "work with ${syncFiles[$index]}"
	cp -u dotfiles/${syncFiles[$index]} ${syncFiles[$index]}
  hash d2u &> /dev/null
  if [ $? -eq 1 ]; then
    echo ""
  else
    d2u ${syncFiles[$index]} 
  fi
done

