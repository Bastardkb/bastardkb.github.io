---
layout: default
title: Dilemma Features
nav_order: 2
parent: Firmware
---

# Table of contents

1. TOC
{:toc}

# Introduction

All the features listed below are available in the Dilemma `vendor` keymaps.

The `vendor` keymap aims at providing a consistent experience out of the box. Because some features can be mutually exclusive (e.g. [Auto sniping on layer](#auto-sniping-on-layer) and [Auto pointer layer](#auto-pointer-layer)), not all features are enabled by default. It may be necessary to rebuild the firmware to enable or disable some of the features listed below.

# Dilemma features

## Dilemma stock keymap

- the stock keymaps are built off the `vendor` keymaps, and come with VIA enabled
- you can find a visual reference of those keymaps on the [default keymaps page][keymaps]
- you can find instructions on how to compile your own firmware on the [how to compile your firmware page][compile]

## Trackpad related features

Custom features were developed for the Dilemma, and have since been ported to QMK core.

For each feature, there are:

- custom keycodes you can implement in VIA or when [compiling your own firmware][compile]
- custom defines to change the behavior of the feature
- custom functions you can call to read or write options

Those are detailed below.

### DPI

DPI (i.e. dots per linear inch), a.k.a. mouse sensitivity, can be controlled by the firmware. The Dilemma keymap offers 2 different DPI settings:

- **Default** DPI: the sensitivity of the pointer in normal mode.
- **Sniping** DPI: the sensitivity of the pointer in [sniping mode](#sniping)

For each mode, the firmware allows cycling through multiple pre-defined values.

- Default mode:
    - Default value: 1000 DPI
    - 16 steps available
    - Increments of 200 DPI
    - Total range from 400 to 3,400 (400 → 600 → 800 → … → 3,400)
- Sniping mode:
    - Default value: 200 DPI
    - 4 steps available
    - Increments of 100 DPI
    - Total range from 200 to 500 (200 → 300 → 400 → 500)

The firmware _cycles_ through these values, which means that, for example, incrementing the sniping DPI of `500` by 1 step will loop back to `200`.

You can cycle through those values by using custom keycodes (also present in the default keymap), and also [modify those values in your own firmware if needed.](#changing-dynamic-dpi-scaling-default-and-increment-values].

Custom keycodes:

| Name   | Description                                                  |
| ------ | ------------------------------------------------------------ |
| `DPI_MOD` | increase the sensitivity of the pointer movement by one step |
| `DPI_RMOD` | decrease the sensitivity of the pointer movement by one step |


Custom defines (with default values):

```
#define Dilemma_MINIMUM_DEFAULT_DPI 400
#define Dilemma_DEFAULT_DPI_CONFIG_STEP 200
```

Custom functions:

```c
dilemma_cycle_pointer_default_dpi(bool forward) // cycle forward or backward the possible values
dilemma_cycle_pointer_default_dpi_noeeprom(bool forward) // cycle forward or backward the possible values without persisting the change to EEPROM
dilemma_get_pointer_default_dpi() // returns the current DPI value
```


### Sniping

**Sniping mode** slows down the pointer for more precise gestures. It is useful when combined with a higher default DPI. Like the default pointer's DPI, the sniper mode DPI can be changed at runtime

Custom Keycodes:

| Name   | Description                                                                  |
| ------ | ---------------------------------------------------------------------------- |
| `S_D_MOD` | increase the sensitivity of the pointer movement in sniping mode by one step |
| `S_D_RMOD` | decrease the sensitivity of the pointer movement in sniping mode by one step |
| `SNIPING`  | enable sniping mode as long as the key is pressed                            |
| `SNP_TOG` | toggle sniping mode on and off                                               |


Custom defines (with default values):

```
#define DILEMMA_MINIMUM_SNIPING_DPI 200
#define DILEMMA_SNIPING_DPI_CONFIG_STEP 100
```

Custom functions:

```c
dilemma_set_pointer_sniping_enabled(bool enable) // enable/disable sniping mode
dilemma_get_pointer_sniping_enabled() // returns whether sniping mode is currently enabled
dilemma_cycle_pointer_sniping_dpi(bool forward) // cycle forward or backward the possible values
dilemma_cycle_pointer_sniping_dpi_noeeprom(bool forward) // cycle forward or backward the possible values without persisting the change to EEPROM
dilemma_get_pointer_sniping_dpi() // returns the current sniping mode DPI value
```

### Auto sniping on layer

You can trigger sniping automatically when on a specific layer by adjusting the following in your keymap:

```
#define DILEMMA_AUTO_SNIPING_ON_LAYER LAYER_POINTER
```

### Auto pointer layer

You can trigger the pointer layer automatically upon moving the trackpad by adjusting the following in your keymap:

```
#define DILEMMA_AUTO_POINTER_LAYER_TRIGGER_ENABLE
#define DILEMMA_AUTO_POINTER_LAYER_TRIGGER_TIMEOUT_MS 1000
```

### Drag-scroll

**Drag-scroll** enables scrolling with the trackpad. When drag-scroll is enabled, the trackpad's `x` and `y` movements are converted into `h` (horizontal) and `v` (vertical) movement, effectively sending scroll instructions to the host system.

Custom keycodes:

| Name   | Description                                           |
| ------ | ----------------------------------------------------- |
| `DRGSCRL`  | enable drag-scroll mode as long as the key is pressed |
| `DRG_TOG` | toggle drag-scroll mode on and off                    |

Custom functions:

```c
dilemma_set_pointer_dragscroll_enabled(bool enable) // enable/disable drag-scroll
dilemma_get_pointer_dragscroll_enabled() // returns whether drag-scroll mode is currently enabled
```

Custom defines:

```
#define DILEMMA_DRAGSCROLL_REVERSE_X // inverts horizontal scrolling 
#define DILEMMA_DRAGSCROLL_REVERSE_Y // inverts vertical scrolling 
```

### Rotary encoders

The Dilemma keyboards come with optional rotary encoders, which have behaviours assigned in the vendor keymap.

Depending on your rotary encoder model, you might need to change the encoder resolution, for example if the encoder needs 2 clicks to trigger a signal. The shorter encoders always need a resolution of 2, and the longer ones may need 2, or 4.

You can do this in your userspace's keymap `config.h` file:

```c
#define ENCODER_RESOLUTION 2
```

----

[keymaps]: {{site.baseurl}}/fw/default-keymaps.html
[compile]: {{site.baseurl}}/fw/compile-firmware.html