#!/bin/bash

#keymap draw cnano.yaml > cnano.svg && convert -size 800x800 -background '#303030' cnano.svg cnano.png && feh cnano.png

for i in cnano cmini charybdis skeletyl tbkmini scylla; do
    echo $i
    keymap draw $i.yaml > $i.svg
    convert -size 800x800 -background '#303030' $i.svg $i.png
done
echo done!
