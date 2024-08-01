---
layout: default
title: Compiling your firmware
nav_order: 99
parent: Firmware
---

# Table of contents

1. TOC
{:toc}


# Introduction

The [BastardKB QMK repository](https://github.com/bastardkb/bastardkb-qmk) contains the firmware code and releases for the Bastard Keyboards Charybdis boards.

While that repository is used as primary source of truth for Bastard Keyboards firmwares as it contains the latest changes and improvements, the maintainers aim at upstreaming all those changes to the official [QMK repository](https://github.com/qmk/qmk_firmware).

This page details how to compile your own firmware. Building from source is useful to people who want to customize their keyboard and keymaps beyond what Via offers. This involves using a command-line interface, writing C code, and compiling this code into the final firmware file.

If that seems too complicated, you can also use one of the default releases, or VIA.

# Requirements 

Follow the [QMK docs](https://docs.qmk.fm/#/getting_started_build_tools) to setup your environment

# Building your firmware

To build a firmware, use the `bkb-master` branch:

```shell
git checkout origin/bkb-master
qmk compile -c -kb bastardkb/{keyboard} -km {keymap}
```

## `{keyboard}` argument

`{keyboard}` corresponds to the physical keyboard you are building the firmware for. It can be one of the following:

- `charybdis/4x6`: the 4x6+5 [Charybdis](https://github.com/bastardkb/charybdis/)
- `charybdis/3x5`: the 3x5+3 [Charybdis Nano](https://github.com/bastardkb/charybdis/)
- `charybdis/3x6`: the 3x6+3 [Charybdis Mini](https://github.com/bastardkb/charybdis/)
- `scylla`: the 4x6+5 [Scylla](https://github.com/Bastardkb/Scylla)
- `skeletyl`: the 3x5+3 [Skeletyl](https://github.com/Bastardkb/Skeletyl/)
- `tbkmini`: the 3x6+3 [TBK Mini](https://github.com/Bastardkb/TBK-Mini/)
- `dilemma/3x5_3`: the 3x5+3 [Dilemma](https://github.com/bastardkb/dilemma/)
- `dilemma/4x6_4`: the 4x6+4 [Dilemma Max](https://github.com/bastardkb/dilemma/)

## `{keymap}` argument

All keyboards have a `default` keymap. Most also have a `via` keymap. The latter is already configured to work with [Via](https://usevia.app).

To build *any* keymap with Via support, simply add the following argument to the command line: `-e VIA_ENABLE=yes`, e.g.:

```shell
qmk compile -c -kb {keyboard} -km default -e VIA_ENABLE=yes
```

# Flashing your keyboard

Once you compiled your `uf2` image, you can flash your keyboard.

For how to flash your keyboard, take a look at the [how to flash your keyboard page][flashing].

---

[flashing]: {{site.baseurl}}/fw/flashing.html
