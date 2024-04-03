#/bin/bash

ensure_exists_in_path() {
    type $1 >/dev/null 2>&1 || { echo >&2 "Could not find $1 in path. Aborting."; exit 1; }
}

ensure_exists_in_path yq
ensure_exists_in_path tr
ensure_exists_in_path keymap
ensure_exists_in_path convert

for board in cnano cmini charybdis skeletyl tbkmini scylla dilemma dilemma_max; do
    echo $board
    rm -r $board
    mkdir -p $board
    for layer in `yq '.layers | keys[]' $board.yaml | tr -d '"'`; do # parse layer list from yaml, remove quotes
        echo $board/$layer

        layer_safe=${layer//\//_} # replace slash with underscore

        keymap draw -s "$layer" -- $board.yaml > $board/$layer_safe.svg
        convert -size 800x800 -background '#303030' "$board/$layer_safe.svg" "$board/$layer_safe.png"
    done
done
