---
layout: default
title: Flashing LCD firmware
nav_order: 15
parent: Firmware
---

# Table of contents

1. TOC
{:toc}

# Introduction

The Dilemma V3 and Dilemma MAX V3 can accomodate an LCD module. It has default behaviour, like showing the layer, mods, scrolling DPI and sniping toggles.

It requires custom code, that is stored in a [module][module].

# Compiling your firmware with userspace

This is the recommended way of adding the screen code. At this moment, using a local QMK installation is not documented.

## Requirements

Make sure you have your [local qmk userspace set up][userspace] to work with the Dilemma V3 / Dilemma MAX V3.

## Adding the submodule to your userspace

Make a copy of the module into your userspace:

```
cd /path/to/your/external/userspace
mkdir -p modules
git submodule add https://github.com/Bastardkb/qmk_modules.git modules/bastardkb
git submodule update --init --recursive
```

Add the following to your `keymap.json`. You may need to merge it with your existing json.

```json
{
    "modules": [
        "bastardkb/lcd"
    ]
}
```

---- 
[module]: https://github.com/Bastardkb/qmk_modules
[userspace]: {{site.baseurl}}/fw/procyon-compile.html
