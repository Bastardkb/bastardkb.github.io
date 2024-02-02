# Building keymap images

## Keymap-drawer
Keymap drawer with pretty Charybdis support lives here for the moment: https://github.com/finrod09/keymap-drawer/tree/bkb
- check out branch
- `poetry shell` to get a shell with `keymap` in the path

## Drawing
- `keymap draw cnano.yaml > cnano.svg` to generate SVG
- `convert -size 800x800 -background '#303030' cnano.svg cnano.png` to generate PNG

All in one and check:
```
keymap draw cnano.yaml > cnano.svg && convert -size 800x800 -background '#303030' cnano.svg cnano.png && feh cnano.png
```
