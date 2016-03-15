#!/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
\cp ~/.vimrc $SCRIPTPATH/vimcfgfile -b
echo "Saved .vimrc file to $SCRIPTPATH"
