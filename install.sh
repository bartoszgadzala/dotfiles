#!/bin/sh
INSTALLDIR=${1:-$HOME}

mkdir -p $INSTALLDIR/.canto
mkdir -p $INSTALLDIR/bin

for i in .bashrc .conkyrc .dir_colors .fonts .mc .tmux.conf .vim .vimrc .xinitrc .Xresources .zshrc .canto/conf.py .config/awesome .themes/xterm bin/*
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

