#!/bin/bash
INSTALLDIR=${1:-$HOME}

for i in .fonts .tmux.conf .vim .vimrc
do
	mv $INSTALLDIR/$i $INSTALLDIR/$i.old 2> /dev/null
	ln -s $PWD/$i $INSTALLDIR/$i;
done;

echo "Initializing submodules..."
git submodule init && git submodule update

echo "Installing vim bundles..."
vim +BundleInstall +qall

