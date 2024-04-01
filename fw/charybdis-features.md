---
layout: default
title: Charybdis Features
nav_order: 1
parent: Firmware
---

# Table of contents

1. TOC
{:toc}

All the features listed below are available in the Charybdis stock keymaps (built from the `via` keymap source).

The stock keymap aims at providing a consistent experience out of the box. Because some features can be mutually exclusives (e.g. [Auto sniping on layer](#auto-sniping-on-layer) and [Auto pointer layer](#auto-pointer-layer)), not all features are enabled by default. It may be necessary to rebuild the firmware to enable or disable some of the features listed below.

# Charybdis features

## Charybdis stock keymap

The stock keymap is built off the `via` keymap:

- [Charybdis (4x6) `via` keymap](https://github.com/Bastardkb/bastardkb-qmk/tree/bkb-master/keyboards/bastardkb/charybdis/4x6/keymaps/via#layout)
- [Charybdis Nano (3x5) `via` keymap](https://github.com/Bastardkb/bastardkb-qmk/tree/bkb-master/keyboards/bastardkb/charybdis/3x5/keymaps/via#layout)

A visual reference layout is provided for each of these keymap at the links above.

Those stock keymaps are compatible with [Via](https://www.caniusevia.com/) which enables on-the-fly configuration to a certain extent (i.e. keycodes, rotary encoders, RGB animations can be configured in just a few clicks from the UI). Some more advanced features, however, require manually updating the firmware.

### Trackball related features

There's 2 features that are related to pointing devices available in the Charybdis firmware:

- **Sniping**: temporarily reduces the sensitivity of the pointer for a more precise control.
- **Drag-scroll**: temporarily changes the behavior of the trackball into a scrolling device (in any direction).

### DPI

DPI (i.e. dots per linear inch), a.k.a. mouse sensitivity, can be controlled by the firmware. The Charybdis keymap offers 2 different DPI settings:

- **Default** DPI: the sensitivity of the pointer in normal (i.e. non-sniping) mode.
- **Sniping** DPI: the sensitivity of the pointer in sniping mode.

For each mode, the firmware allows cycling through multiple pre-defined values:

- Default mode:
    - Default value: 400 DPI
    - 16 steps available
    - Increments of 200 DPI
    - Total range from 400 to 3,400 (400 → 600 → 800 → … → 3,400)
- Sniping mode:
    - Default value: 200 DPI
    - 4 steps available
    - Increments of 100 DPI
    - Total range from 200 to 500 (200 → 300 → 400 → 500)

The firmware _cycles_ through these values, which means that, for example, incrementing the sniping DPI of `500` by 1 step will loop back to `200`.

These values can be changed by manually editing the firmware. See [Dynamic DPI scaling](#changing-dynamic-dpi-scaling-default-and-increment-values].

### Custom keycodes

The Charybdis firmware comes with a number of custom keycodes related to features that are specific to this keyboard. These keycodes are:

- Default DPI Increase (`DPI+`): increase the sensitivity of the pointer movement by one step (out of 16).
- Default DPI Decrease (`DPI-`): decrease the sensitivity of the pointer movement by one step (out of 16).
- Sniping DPI Increase (`Snp+`): increase the sensitivity of the pointer movement in sniping mode by one step (out of 4).
- Sniping DPI Decrease (`Snp-`): decrease the sensitivity of the pointer movement in sniping mode by one step (out of 4).
- Sniping Momentary (`Snp`): enable sniping mode as long as the key is pressed.
- Sniping Toggle (`SnpT`): toggle sniping mode on and off.
- Drag-scroll Momentary (`Drg`): enable drag-scroll mode as long as the key is pressed.
- Drag-scroll Toggle (`DrgT`): toggle drag-scroll mode on and off.

### Charybdis 4x6

- 3x5: heavily inspired by Miryoku
  - Base layer
  - Numbers layer
  - Symbols layer
  - Function layer
  - Navigation layer
  - Media layer
  - Pointer layer
- 4x6: inspired from OG dactyl
  - Base layer
  - Lower layer
  - Raise layer
  - Pointer layer

## Firmware configuration

{: .note }
This requires a firmware update.

The following section explains how to update the firmware source code to fine-tune your experience. This requires a functional development environment for QMK (https://docs.qmk.fm/#/newbs) and, ideally, some prior experience in computer science and the C programming language.

### Changing dynamic DPI scaling default and increment values

{: .note }
This requires a firmware update.

### Auto sniping on layer

{: .note }
This requires a firmware update.

### Auto pointer layer

{: .note }
This requires a firmware update.

### X/Y axis inversion

{: .note }
This requires a firmware update.

### Extended mouse reports

{: .note }
This requires a firmware update.

By default, QMK reports the pointing device movement using numbers between `-127` and `128`.

### Configuration sync between each half

{: .note }
This requires a firmware update.
