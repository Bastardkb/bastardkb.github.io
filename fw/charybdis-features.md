---
layout: default
title: Charybdis Features
nav_order: 1
parent: Firmware
---

# Table of contents

1. TOC
{:toc}

# Introduction

All the features listed below are available in the Charybdis `vendor` keymaps.

The `vendor` keymap aims at providing a consistent experience out of the box. Because some features can be mutually exclusive (e.g. [Auto precision mode on layer](#auto-precision-mode-on-mouse-layer) and [Auto pointer layer](#auto-pointer-layer)), not all features are enabled by default. It may be necessary to rebuild the firmware to enable or disable some of the features listed below.

# Charybdis features

## Charybdis stock keymap

- the stock keymaps are built off the `vendor` keymaps, and come with [Argos][argos] enabled
- you can find a visual reference of those keymaps on the [default keymaps page][keymaps]
- you can find instructions on how to compile your own firmware on the [how to compile your firmware page][compile]

## Trackball related features

Custom features were developed for the Charybdis, and have since been ported to QMK core.

For each feature, there are:

- custom keycodes you can implement in Argos or when [compiling your own firmware][compile]
- custom functions you can call to read or write options

Those are detailed below.

### DPI

DPI (i.e. dots per linear inch), a.k.a. mouse sensitivity, can be controlled by the firmware. The Charybdis keymap offers 2 different DPI settings:

- **Default** DPI: the sensitivity of the pointer in normal mode.
- **Precision mode** DPI: the sensitivity of the pointer in [Precision mode](#precision mode)

For each mode, the firmware allows cycling through multiple pre-defined values.

- Default mode:
    - Default value: 400 DPI
    - 16 steps available
    - Increments of 200 DPI
    - Total range from 400 to 3,400 (400 → 600 → 800 → … → 3,400)
- Precision mode:
    - Default value: 200 DPI
    - 4 steps available
    - Increments of 100 DPI
    - Total range from 200 to 500 (200 → 300 → 400 → 500)

The firmware _cycles_ through these values, which means that, for example, incrementing the Precision mode DPI of `500` by 1 step will loop back to `200`.

Custom keycodes:

| Name   | Description                                                  |
| ------ | ------------------------------------------------------------ |
| `DPI_MOD` | increase the sensitivity of the pointer movement by one step |
| `DPI_RMOD` | decrease the sensitivity of the pointer movement by one step |

You can change the DPI of the precision mode directly through Argos, or the functions below.

Custom functions:

```c
bkpd_cycle_pointer_default_dpi(bool forward) // cycle forward or backward the possible values
bkpd_cycle_pointer_default_dpi_noeeprom(bool forward) // cycle forward or backward the possible values without persisting the change to EEPROM
bkpd_get_pointer_default_dpi() // returns the current DPI value
```

### Precision mode

**Precision mode** slows down the pointer for more precise gestures. It is useful when combined with a higher default DPI. Like the default pointer's DPI, the precision mode DPI can be changed at runtime

Custom Keycodes:

| Name   | Description                                                                  |
| ------ | ---------------------------------------------------------------------------- |
| `S_D_MOD` | increase the sensitivity of the pointer movement in precision mode by one step |
| `S_D_RMOD` | decrease the sensitivity of the pointer movement in precision mode by one step |
| `SNIPING`  | enable precision mode as long as the key is pressed                            |
| `SNP_TOG` | toggle precision mode on and off                                               |

You can change the DPI of the precision mode directly through Argos, or the functions below.

Custom functions:

```c
bkpd_set_pointer_sniping_enabled(bool enable) // enable/disable precision mode
bkpd_get_pointer_sniping_enabled() // returns whether precision mode is currently enabled
bkpd_cycle_pointer_sniping_dpi(bool forward) // cycle forward or backward the possible values
bkpd_cycle_pointer_sniping_dpi_noeeprom(bool forward) // cycle forward or backward the possible values without persisting the change to EEPROM
bkpd_get_pointer_sniping_dpi() // returns the current precision mode DPI value
```

### Auto Precision mode on mouse layer

You can trigger Precision mode automatically when on the mouse layer by adjusting through Argos, or with the custom code below:

```c
bkpd_set_auto_precision_on_mouse_layer_enabled(bool enable) // enable/disable precision mode on mouse layer

#undef AUTO_MOUSE_DEFAULT_LAYER // modify only if you use a custom mouse layer
#define AUTO_MOUSE_DEFAULT_LAYER 4 
```

### Auto pointer layer

You can trigger the pointer layer automatically upon moving the trackball by adjusting through Argos, or with the custom code below:

```c
bkpd_set_auto_mouse_layer_enabled(bool enabled) // enable/disable auto mouse layer on trackball move
```

### Drag-scroll

**Drag-scroll** enables scrolling with the trackball. When drag-scroll is enabled, the trackball's `x` and `y` movements are converted into `h` (horizontal) and `v` (vertical) movement, effectively sending scroll instructions to the host system.

Custom keycodes:

| Name   | Description                                           |
| ------ | ----------------------------------------------------- |
| `DRGSCRL`  | enable drag-scroll mode as long as the key is pressed |
| `DRG_TOG` | toggle drag-scroll mode on and off                    |

Custom functions:

```c
bkpd_set_pointer_dragscroll_enabled(bool enable) // enable/disable drag-scroll
bkpd_get_pointer_dragscroll_enabled() // returns whether drag-scroll mode is currently enabled
bkpd_set_dragscroll_axis_invert_x(bool invert) // inverts (or not) dragscroll on X axis
bkpd_set_dragscroll_axis_invert_y(bool invert) // inverts (or not) dragscroll on Y axis
```

## Configuration Syncing

Configuration syncing is enabled by default on the newest firmwares. It enables syncing of the configuration, such as to read the Precision mode or drag scroll modes on the other half (e.g. for displaying the status via rgb matrix, or added on screens).

Please note that you will need to reflash both sides when enabling this. A the moment this can make dragscroll unusable if you connect the secondary side to your computer instead of primary.

----

[keymaps]: {{site.baseurl}}/fw/default-keymaps.html
[compile]: {{site.baseurl}}/fw/compile-firmware.html
[argos]: https://argos.bastardkb.com/