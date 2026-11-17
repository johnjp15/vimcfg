#!/bin/bash
set -euo pipefail

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

# No backups here: the repo is under git, so history is the backup.
command cp -f ~/.vimrc "$SCRIPTPATH/vimcfgfile"
mkdir -p "$SCRIPTPATH/colors"
for f in ~/.vim/colors/*.vim; do
    command cp -f "$f" "$SCRIPTPATH/colors/"
done
echo "Saved vim configuration to $SCRIPTPATH"

TMUXPATH="$SCRIPTPATH/tmux"
command cp -f ~/.tmux.conf "$TMUXPATH/tmuxconf"
echo "Saved tmux configuration to $TMUXPATH"
