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

The [BastardKB QMK repository](https://github.com/bastardkb/bastardkb-qmk) contains the behavioural firmware code and releases for the Bastard Keyboards Charybdis boards.

The keymaps are stored in the [BastardKB QMK userspace repository][bkbus].

The QMK repository repository is used as primary source of truth for Bastard Keyboards firmwares and contains the latest changes and improvements.
The maintainers aim at upstreaming all those changes to the official [QMK repository](https://github.com/qmk/qmk_firmware).

This page details how to build your own firmware. 
Building from source is useful to people who want to customize their keyboard and keymaps beyond what Via offers. 
You will have to modify the keymap `C` code, and from there compile your firmware either using Github actions or the local command line.

If that seems too complicated, you can also use one of the [default releases](https://github.com/Bastardkb/bastardkb-qmk/releases/latest), or VIA.

# Pre-requisites

## BastardKb userspace

While the QMK repository contains the logic behind the keyboards, the keymaps are in the userspace repository.

**If you are going to create your own keymaps, the first step is to fork the [BastardKB QMK userspace repository][bkbus].**


This way, you can:

- track changes
- use Github actions to compile your keymap
- (if relevant) contribute your keymap to the origin Bastard KB QMK Userspace

In a separate folder, clone the fork you just created, using either Github desktop or the command line:


```shell
git clone https://github.com/my_username/qmk_userspace 
```

# Creating your keymap

If you want to create your own keymap, **make sure you have forked the [BastardKB QMK userspace repository][bkbus].**

Create a separate folder in the relevant folder, eg:

```
keyboards/bastardkb/charybdis/4x6/keymaps/my-keymap/
```


{: .note }
By convention, your keymap name must be all lowercase, without spaces.

Then, the easiest is to copy over an existing keymap (eg. `vendor`) over, and modify from there.

# Compiling your firmware using Github actions

By using github actions, you can have Github compile your firmware without having to bother with a local QMK installation and console commands.

## Pre-requisites {#actions-requirements}

If you want to use Github actions to compile your firmware (rather than doing it locally in the console), you will need to:

- fork the BastardKB QMK Userspace repository
- **in the `Actions` tab, enable workflows**


## Compiling your firmware

First, make sure you have gone through the [Github actions requirements section above](#actions-requirements).

After cloning the BastardKB userspace repository, it is already configured to work with the BastardKB QMK fork - so no need for additional configuration on that side.

Once you created your own keymap, you will need to add it to the list of keymaps to be compiled in `qmk.json`, for example:

```shell
{
    "userspace_version": "1.0",
    "build_targets": [
        ["bastardkb/charybdis/4x6", "my-keymap"]
    ]
}
```

We also recommend deleting the other keymaps if you don't use them, as it'll make the action run faster.

Then,

1. Push your changes above to your forked GitHub repository
1. Look at the GitHub Actions for a new actions run
1. Wait for the actions run to complete
1. Inspect the Releases tab on your repository for the latest firmware build


# Compiling your firmware using the local command line

You can also compile your firmware through your local command line. This requires you to be familiar with the console, and doing some additional configuration.

## Pre-requisites

### Working QMK environment

Make sure you have a functional QMK environment. See [QMK Docs](https://docs.qmk.fm/#/newbs) for details. At this point, **you don't need** to run `qmk setup`.

### BastardKb QMK fork

Clone the BKB QMK repository, using either github desktop or the command line, and switch to the `bkb-master` branch:

```shell
git clone https://github.com/bastardkb/bastardkb-qmk
cd bastardkb-qmk
git checkout -b bkb-master origin/bkb-master
```

Now that you've cloned the repository, `cd` into it and set it as the default local QMK repository. You also need to do this if you had a previous, separate QMK installation.

```shell
qmk config user.qmk_home="$(realpath .)" 
```

{: .info }
If you have multiple QMK installations, you will need to manually set the qmk home path again to use the other ones.

That's all you needed to do with the QMK repository.
From here on, **we will only focus on the userspace repository.**

### QMK Userspace

Next, `cd` into your userspace fork and enable userspace:

```shell
qmk config user.overlay_dir="$(realpath .)"
```

## Compiling your firmware

Once in the QMK userspace repository, compiling a keymap works the same as normal:

```shell
qmk compile -c -kb bastardkb/{keyboard} -km {keymap}
```

### `{keyboard}` argument

`{keyboard}` corresponds to the physical keyboard you are building the firmware for. It can be one of the following:

- `charybdis/4x6`: the 4x6+5 [Charybdis](https://github.com/bastardkb/charybdis/)
- `charybdis/3x5`: the 3x5+3 [Charybdis Nano](https://github.com/bastardkb/charybdis/)
- `charybdis/3x6`: the 3x6+3 [Charybdis Mini](https://github.com/bastardkb/charybdis/)
- `scylla`: the 4x6+5 [Scylla](https://github.com/Bastardkb/Scylla)
- `skeletyl`: the 3x5+3 [Skeletyl](https://github.com/Bastardkb/Skeletyl/)
- `tbkmini`: the 3x6+3 [TBK Mini](https://github.com/Bastardkb/TBK-Mini/)
- `dilemma/3x5_3`: the 3x5+3 [Dilemma](https://github.com/bastardkb/dilemma/)
- `dilemma/4x6_4`: the 4x6+4 [Dilemma Max](https://github.com/bastardkb/dilemma/)

### `{keymap}` argument

All keyboards have a `vendor` keymap, which is the one officially supported and shipped with Bastard Keyboards.

To build *any* keymap with Via support, simply add the following argument to the command line: `-e VIA_ENABLE=yes`, e.g.:

```shell
qmk compile -c -kb {keyboard} -km default -e VIA_ENABLE=yes
```

# Contributing your own keymap

If you are happy with your keymap and would like to share it, we would gladly review it!

Just PR your fork to the origin BastardKB Userspace repository.

# Flashing your keyboard

Once you compiled your `uf2` image, you can flash your keyboard.

For how to flash your keyboard, take a look at the [how to flash your keyboard page][flashing].


---

[flashing]: {{site.baseurl}}/fw/flashing.html
[bkbus]: https://github.com/Bastardkb/qmk_userspace