#!/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
\cp ~/.vimrc $SCRIPTPATH/vimcfgfile -b
\cp -rfb ~/.vim/colors $SCRIPTPATH/.
echo "Saved configuration files to $SCRIPTPATH"
