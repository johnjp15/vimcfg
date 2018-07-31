#/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
mkdir -p ~/.vim/colors
cp $SCRIPTPATH/vimcfgfile ~/.vimrc -b
cp -rfb $SCRIPTPATH/colors ~/.vim/
# \cp $SCRIPTPATH/monokai.vim ~/.vim/colors -b
# \cp $SCRIPTPATH/carbonized.vim ~/.vim/colors -b
echo "Loaded configuration files from $SCRIPTPATH"


TMUXPATH="$SCRIPTPATH/tmux"

cp -b $TMUXPATH/tmuxconf ~/.tmux.conf
