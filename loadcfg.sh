#/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
\cp $SCRIPTPATH/vimcfgfile ~/.vimrc -b
\cp $SCRIPTPATH/monokai.vim ~/.vim/colors -b
echo "Loaded .vimrc file from $SCRIPTPATH"
