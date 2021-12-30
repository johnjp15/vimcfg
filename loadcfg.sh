#/bin/bash

#vimcfgdir=$(pwd)

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#ls $vimcfgdir 
mkdir -p ~/.vim/colors
gcp $SCRIPTPATH/vimcfgfile ~/.vimrc -b
gcp -rfb $SCRIPTPATH/colors ~/.vim/
# \gcp $SCRIPTPATH/monokai.vim ~/.vim/colors -b
# \gcp $SCRIPTPATH/carbonized.vim ~/.vim/colors -b
echo "Loaded configuration files from $SCRIPTPATH"


TMUXPATH="$SCRIPTPATH/tmux"

gcp -b $TMUXPATH/tmuxconf ~/.tmux.conf
