#!/bin/bash

DOTPATH=~/.dotfiles

for f in .??*
do
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitconfig" ]] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"

    echo "$f"
done
