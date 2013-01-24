#!/bin/bash +x

if [ "$(id -u)" == "0" ]; then

	echo "This must not be run as root!"
	exit 1
fi

cp ~/.vimrc old_vimrc_backup
rm ~/.vimrc
cp vimrc ~/.vimrc
