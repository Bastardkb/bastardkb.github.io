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

While the behavioural code is stored on the QMK repository, the keymaps are stored in our [QMK userspace](https://github.com/Bastardkb/qmk_userspace).

This page details how to compile your own firmware. Building from source is useful to people who want to customize their keyboard and keymaps beyond what Via offers. This involves using a command-line interface, writing C code, and compiling this code into the final firmware file.

If that seems too complicated, you can also use one of the default releases, or VIA.

# Pre-requisites

## Working QMK environment

Make sure you have a functional QMK environment. See [QMK Docs](https://docs.qmk.fm/#/newbs) for details. At this point, **you don't need** to run `qmk setup`.

## BastardKb QMK fork

Clone the BKB QMK repository, using either github desktop or the command line, and switch to the `bkb-master` branch:

```shell
git clone https://github.com/bastardkb/bastardkb-qmk
cd bastardkb-qmk
git checkout origin/bkb-master
```

Now that you've cloned the repository, `cd` into it and set it as the default local QMK repository. You also need to do this if you had a previous, separate QMK installation.

```shell
qmk config user.qmk_home="$(realpath .)" 
```

{: .note }
If you have multiple QMK installations, you will need to manually set the qmk home path again to use the other ones.

## BastardKb userspace

While the QMK repository contains the logic behind the keyboards, the keymaps are in the userspace repository.

In a separate folder, clone the BKB QMK repository, using either github desktop or the command line:


```shell
git clone https://github.com/bastardkb/qmk_userspace
```

Next, `cd` into the repository and enable userspace:

```shell
cd qmk_userspace
qmk config user.overlay_dir="$(realpath .)"
```

## Github actions

// TODO screenshot enable actions workflows

// TODO mroe details, screenshots
actions tab -- "I understand my workflows, go ahead and enable them"

1. In the GitHub Actions tab, enable workflows
2. Push your changes above to your forked GitHub repository
3. Look at the GitHub Actions for a new actions run
4. Wait for the actions run to complete
5. Inspect the Releases tab on your repository for the latest firmware build

# Compiling with console

Once in the QMK Userspace repository, compiling a keymap works the same as normal:

```shell
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

# Compiling with Github Actions

If you clone the BastardKB Userspace repository, it is alredy configured to work with the BastardKB QMK fork.

If you created your own keymap, you will need to add it to the list of keympaps to be compiled in `qmk.json`, for example:

```shell
{
    "userspace_version": "1.0",
    "build_targets": [
        ["bastardkb/charybdis/4x6", "my-keymap"]
    ]
}
```

We also recommend deleting the other keymaps if you don't use them, as it'll make the action run faster.

# Creating your own keymap

// TODO

# Contributing your own keymap

// TODO

# Flashing your keyboard

Once you compiled your `uf2` image, you can flash your keyboard.

For how to flash your keyboard, take a look at the [how to flash your keyboard page][flashing].


---

[flashing]: {{site.baseurl}}/fw/flashing.html