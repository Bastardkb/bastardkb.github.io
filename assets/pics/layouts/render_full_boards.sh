#!/bin/bash

#keymap draw cnano.yaml > cnano.svg && convert -size 800x800 -background '#303030' cnano.svg cnano.png && feh cnano.png

for board in cnano cmini charybdis skeletyl tbkmini scylla; do
    echo $board
    keymap draw $board.yaml > $board.svg
    convert -size 800x800 -background '#303030' $board.svg $board.png
done
echo done!
