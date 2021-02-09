---
layout: default
title: Software
---

## QMK

The Bastyl uses QMK, you can find the config files on [qmk's repo](https://github.com/qmk/qmk_firmware), in keyboards/hidtech/bastyl

## Per-key RGB

If you ordered a Bastyl with per-key RGB, the elite-Cs will come with pre-flashed software.

If you want to modify it, here's a few things you need to modify in your `config.h`:

```h
#define RGB_DI_PIN D2
#define RGBLED_NUM 58
#define RGBLIGHT_LIMIT_VAL 100
```
