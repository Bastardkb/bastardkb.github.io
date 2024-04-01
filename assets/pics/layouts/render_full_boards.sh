#!/bin/bash

ensure_exists_in_path() {
    type $1 >/dev/null 2>&1 || { echo >&2 "Could not find $1 in path. Aborting."; exit 1; }
}

ensure_exists_in_path keymap
ensure_exists_in_path convert

for board in cnano cmini charybdis skeletyl tbkmini scylla; do
    echo $board
    keymap draw $board.yaml > $board.svg
    convert -size 800x800 -background '#303030' $board.svg $board.png
done
echo done!
