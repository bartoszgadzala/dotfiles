#!/bin/sh
INSTALLDIR=${1:-$HOME}

create_link ()
{
	F=$INSTALLDIR/$1
	if [ $F -ef $1 ]; then
		echo "$F already linked"
	else
		echo "Linking $F to $PWD/$1"
		mv $F $F.old 2> /dev/null
		ln -s $PWD/$1 $F;
	fi
}

mkdir -p $INSTALLDIR/.canto
mkdir -p $INSTALLDIR/bin

for i in .bashrc .conkyrc .dir_colors .fonts .mc .tmux.conf .vim .vimrc .xinitrc .Xresources .zshrc .canto/conf.py .config/awesome .themes/xterm bin
do
	create_link $i
done


echo "Initializing submodules..."
git submodule init && git submodule update

echo "Installing vim bundles..."
vim +BundleInstall +qall

echo "Installing powershell"
cd ~/bin/powerline-shell; ./install.py; cd ~-
