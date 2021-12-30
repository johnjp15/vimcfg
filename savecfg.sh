#!/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
\gcp ~/.vimrc $SCRIPTPATH/vimcfgfile -b
\gcp -rfb ~/.vim/colors $SCRIPTPATH/.


TMUXPATH="$SCRIPTPATH/tmux"

gcp -b ~/.tmux.conf $TMUXPATH/tmuxconf

echo "Saved configuration files to $SCRIPTPATH"
