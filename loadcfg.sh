#!/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
\cp $SCRIPTPATH/vimcfgfile ~/.vimrc -b
echo "Loaded .vimrc file from $SCRIPTPATH"
