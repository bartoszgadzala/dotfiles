#!/bin/bash
INSTALLDIR=${1:-$HOME}

for i in .bashrc .dir_colors .fonts .tmux.conf .vim .vimrc
do
	F=$INSTALLDIR/$i
	if [ $F -ef $i ]; then
		echo "$F already linked"
	else
		echo "Linking $F to $PWD/$i"
		mv $F $F.old 2> /dev/null
		ln -s $PWD/$i $F;
	fi
done;

echo "Initializing submodules..."
git submodule init && git submodule update

echo "Installing vim bundles..."
vim +BundleInstall +qall

