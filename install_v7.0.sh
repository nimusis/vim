#!/bin/bash

kwonEnvDir=$HOME/".kwon_env"
filename=".kwon_env_v7.0.tar.gz"
bashfilename=$HOME/".bashrc"

wget -O $filename "https://github.com/nimusis/vim/blob/master/kwon_env_v7.0.tar.gz?raw=true"

mkdir $kwonEnvDir
gunzip -c $filename | tar -xf - --directory $kwonEnvDir


if grep -q '.kwon_env' $HOME/.bashrc; then
	echo "kwon_env aliases already exist!"
else
	echo "" >> $HOME/.bashrc
	echo "#aliases for kwon_env" >> $HOME/.bashrc
	echo "alias kwon='source ~/.kwon_env/bashrc'" >> $HOME/.bashrc
	echo "" >> $HOME/.bashrc
fi

rm -f $filename


