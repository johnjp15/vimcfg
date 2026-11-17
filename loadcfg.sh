#!/bin/bash
set -euo pipefail

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

# Copy src to dest, backing up an existing dest to dest~ (like GNU cp -b).
# Works with BSD cp on macOS, which has no -b option.
backup_cp() {
    local src="$1" dest="$2"
    if [ -e "$dest" ] && ! cmp -s "$src" "$dest"; then
        command cp -f "$dest" "$dest~"
    fi
    command cp -f "$src" "$dest"
}

mkdir -p ~/.vim/colors
backup_cp "$SCRIPTPATH/vimcfgfile" ~/.vimrc
for f in "$SCRIPTPATH"/colors/*.vim; do
    backup_cp "$f" ~/.vim/colors/"$(basename "$f")"
done
echo "Loaded vim configuration from $SCRIPTPATH"

TMUXPATH="$SCRIPTPATH/tmux"
backup_cp "$TMUXPATH/tmuxconf" ~/.tmux.conf
echo "Loaded tmux configuration from $TMUXPATH"
