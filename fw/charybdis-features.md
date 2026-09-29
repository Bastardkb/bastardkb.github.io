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

The `vendor` keymap aims at providing a consistent experience out of the box. Because some features can be mutually exclusive (e.g. [Auto precision on mouse layer](#auto-precision-on-mouse-layer) and [Auto pointer layer](#auto-pointer-layer)), not all features are enabled by default. It may be necessary to rebuild the firmware to enable or disable some of the features listed below.

# Charybdis features

## Charybdis stock keymap

- the stock keymaps are built off the `vendor` keymaps, and come with [Argos][argos] enabled. [You can read more about argos here][argosdocs].
- you can find a visual reference of those keymaps on the [default keymaps page][keymaps]
- you can find instructions on how to compile your own firmware on the [how to compile your firmware page][compile]

## Pointing module

The [Bastard Keyboards Pointing Module](https://github.com/Bastardkb/qmk_modules) is what runs the trackball and trackpad. It provides **pointing modes**: while a mode is active, movement is not a normal pointer (except precision, which is still a pointer, just slower).

Only one primary mode is active at a time. **Precision** can stack on another mode and halves that mode’s DPI while it is held. Hold a mode key to use it while pressed; the matching `*_TOG` keycode stays on until you toggle it off.

On the mouse layer, motion can also:

{% include pointing_mode_inventory.md %}

You can change DPI, invert axes, auto-activate a mode on a layer, and assign custom direction keys in [Argos][argosdocs] (no compile). For C, see [compiling your firmware][compile].

### Precision mode

**Precision mode** slows the pointer for fine movement. It is useful with a higher default DPI. Precision DPI can be changed at runtime (Argos or the keycodes below).

| Name | Description |
| --- | --- |
| `SNIPING` | enable precision mode while the key is held |
| `SNP_TOG` | toggle precision mode on and off |
| `S_D_MOD` | increase precision-mode DPI by one step |
| `S_D_RMOD` | decrease precision-mode DPI by one step |

### Drag-scroll

**Drag-scroll** turns movement into scroll: `x`/`y` become `h`/`v` on the host.

| Name | Description |
| --- | --- |
| `DRGSCRL` | enable drag-scroll while the key is held |
| `DRG_TOG` | toggle drag-scroll on and off |

### Cursor

**Cursor mode** sends arrow keys: left, right, up, and down.

| Name | Description |
| --- | --- |
| `CURSOR` | enable cursor mode while the key is held |
| `CUR_TOG` | toggle cursor mode on and off |

### Brightness

**Brightness mode** changes **keyboard RGB** brightness (per-key and/or underglow), not OS display brightness. Move up to increase, down to decrease. Requires RGB.

| Name | Description |
| --- | --- |
| `PBRIGHT` | enable brightness mode while the key is held |
| `PBRIGHT_TOG` | toggle brightness mode on and off |

### Zoom

**Zoom mode** sends zoom shortcuts used by many apps: move up for `Ctrl`+`+`, down for `Ctrl`+`-`.

| Name | Description |
| --- | --- |
| `PZOOM` | enable zoom mode while the key is held |
| `PZOOM_TOG` | toggle zoom mode on and off |

### Volume

**Volume mode** changes system volume: up increases, down decreases.

| Name | Description |
| --- | --- |
| `PVOLUME` | enable volume mode while the key is held |
| `PVOLUME_TOG` | toggle volume mode on and off |

### Tab switch

**Tab switch** works in apps that use Ctrl+Tab to change tabs. Move **left** for `Ctrl`+`Shift`+`Tab`, **right** for `Ctrl`+`Tab`.

| Name | Description |
| --- | --- |
| `PTABS` | enable tab-switch mode while the key is held |
| `PTABS_TOG` | toggle tab-switch mode on and off |

### History

**History mode** sends undo/redo in apps that use those shortcuts. Move **left** for `Ctrl`+`Z`, **right** for `Ctrl`+`Shift`+`Z`.

| Name | Description |
| --- | --- |
| `PHIST` | enable history mode while the key is held |
| `PHIST_TOG` | toggle history mode on and off |

### Custom

**Custom modes** send a key of your choice per direction (left, right, up, down). Assign the four keys in [Argos][argosdocs] on the pointing-modes screen, or in firmware. There are five custom modes.

| Name | Description |
| --- | --- |
| `PCUSTOM1` | enable custom mode 1 while the key is held |
| `PCUSTOM1_TOG` | toggle custom mode 1 on and off |
| `PCUSTOM2` / `PCUSTOM2_TOG` | custom mode 2 hold / toggle |
| `PCUSTOM3` / `PCUSTOM3_TOG` | custom mode 3 hold / toggle |
| `PCUSTOM4` / `PCUSTOM4_TOG` | custom mode 4 hold / toggle |
| `PCUSTOM5` / `PCUSTOM5_TOG` | custom mode 5 hold / toggle |

## Shared pointing settings

### DPI

DPI is pointer sensitivity. **Default DPI** applies in normal pointer mode. Each pointing mode also has its own DPI (including precision).

`DPI_MOD` / `DPI_RMOD` cycle the DPI of the **active** mode (hold Shift to reverse direction on `DPI_MOD`, matching firmware). `S_D_MOD` / `S_D_RMOD` always cycle precision DPI.

Values cycle: going past the last step wraps to the first.

In current firmware, default DPI starts at 100 and steps by 100 for 30 steps (up to 3100). Precision DPI starts at 100 and steps by 100 for 20 steps (up to 2100). Factory steps are 6 (700 DPI default) and 4 (500 DPI precision).

While you change DPI on the mouse layer, a bar of RGB LEDs shows the step (Charybdis per-key RGB; Dilemma underglow).

Set DPI in [Argos][argosdocs] without compiling.

### Auto precision on mouse layer

When enabled, entering the mouse layer turns on precision mode. Configure this in [Argos][argosdocs]. This can conflict with auto pointer layer; not all combinations are on by default.

### Auto pointer layer

When enabled, moving the trackball or trackpad activates the mouse layer. Configure this in [Argos][argosdocs].

### Invert axes

Each mode can invert X and/or Y in [Argos][argosdocs] on the pointing-modes screen. `INVX` and `INVY` invert the **currently active** mode from the keyboard.

### Configuration syncing

Configuration syncing is enabled by default on current firmware. It syncs state such as precision or drag-scroll to the other half (RGB, LCD, and similar).

Reflash **both** sides when you rely on this. Drag-scroll can fail if USB is plugged into the secondary half instead of the primary.

----

[keymaps]: {{site.baseurl}}/fw/default-keymaps.html
[compile]: {{site.baseurl}}/fw/compile-firmware.html
[argos]: https://argos.bastardkb.com/
[argosdocs]: {{site.baseurl}}/fw/argos.html
