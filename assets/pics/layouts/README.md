# Building keymap images

## Keymap-drawer
Keymap drawer with pretty Charybdis support lives here for the moment: https://github.com/finrod09/keymap-drawer/tree/bkb
- check out branch
- `poetry install` to install prerequisites
- `poetry shell` to get a shell with `keymap` in the path

## Drawing
- `keymap draw cnano.yaml > cnano.svg` to generate SVG
- `convert -size 800x800 -background '#303030' cnano.svg cnano.png` to generate PNG

All in one and check:
```
keymap draw cnano.yaml > cnano.svg && convert -size 800x800 -background '#303030' cnano.svg cnano.png && feh cnano.png
keymap draw cmini.yaml > cmini.svg && convert -size 800x800 -background '#303030' cmini.svg cmini.png && feh cmini.png
keymap draw charybdis.yaml > charybdis.svg && convert -size 800x800 -background '#303030' charybdis.svg charybdis.png && feh charybdis.png

keymap draw scylla.yaml > scylla.svg && convert -size 800x800 -background '#303030' scylla.svg scylla.png && feh scylla.png
keymap draw tbkmini.yaml > tbkmini.svg && convert -size 800x800 -background '#303030' tbkmini.svg tbkmini.png && feh tbkmini.png
keymap draw skeletyl.yaml > skeletyl.svg && convert -size 800x800 -background '#303030' skeletyl.svg skeletyl.png && feh skeletyl.png
```
