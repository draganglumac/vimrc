#!/bin/bash +x
DIRECTORY="~/.vimrc/bundle/vundle"

if [ "$(id -u)" == "0" ]; then

	echo "This must not be run as root!"
	exit 1
fi

if [ ! -e "$DIRECTORY" ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

cp ~/.vimrc old_vimrc_backup
rm ~/.vimrc
cp vimrc ~/.vimrc
