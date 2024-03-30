#/bin/bash

for board in cnano cmini charybdis skeletyl tbkmini scylla; do
    echo $board
    for layer in `yq '.layers | keys[]' $board.yaml | tr -d '"'`; do # parse layer list from yaml, remove quotes
        echo $board/$layer

        layer_safe=${layer//\//_} # replace slash with underscore

        mkdir -p $board
        keymap draw -s "$layer" -- $board.yaml > $board/$layer_safe.svg
        convert -size 800x800 -background '#303030' "$board/$layer_safe.svg" "$board/$layer_safe.png"
    done
done
