#!/bin/bash

filename=".kwon_env.tar.gz"
bashfilename=$HOME/".bashrc"

wget -O $filename "http://kwon.kr/vim_env/kwon_env.tar.gz"

gunzip -c $filename | tar -xf - --directory $HOME


if grep -q '.kwon_env' $HOME/.bashrc; then
	echo "kwon_env aliases already exist!"
else
	echo "" >> $HOME/.bashrc
	echo "#aliases for kwon_env" >> $HOME/.bashrc
	echo "alias kwon='source ~/.kwon_env/bashrc'" >> $HOME/.bashrc
	echo "" >> $HOME/.bashrc
fi

rm -f $filename


