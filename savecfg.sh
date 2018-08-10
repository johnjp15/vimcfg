#!/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
\cp ~/.vimrc $SCRIPTPATH/vimcfgfile -b
\cp -rfb ~/.vim/colors $SCRIPTPATH/.


TMUXPATH="$SCRIPTPATH/tmux"

cp -b ~/.tmux.conf $TMUXPATH/tmuxconf

echo "Saved configuration files to $SCRIPTPATH"
