---
layout: default
title: Argos
nav_order: 10
parent: Firmware
---

# Table of contents

1. TOC
{:toc}

# What is Argos?

Argos is our solution to easy keyboard customization.

You can change your keymap and mouse behavior, but also a lot of options to make you more productive: combos, tap dances, macros… 

The changes are instant and stored on your keyboard: will work anywhere, with no need for compilation.

## How does it compare to QMK and VIA?

When configuring your keyboard, you have different options: QMK, VIA, Argos.

- QMK is the firmware that always runs on your keyboard. You can modify its code, compile and flash it
- VIA is a widely used visual configuration interface for keyboards. It lacks options and is visually old
- Argos is Bastard Keyboards’ dedicated web configuration interface: it covers the same kind of keymap editing as VIA, plus combos, tap dances, pointing-device tuning, and backups

# Requirements

First, make sure your keyboard has the latest Argos image. You can download the image on the [release page](https://github.com/Bastardkb/qmk_userspace/releases/tag/latest) and flash it using the [bootmagic method][bootmagic].

You will need to use a chromium-based browser like Chrome or Edge.

# Getting started

- visit [argos.bastardkb.com][argos]
- click on `Connect` and select your keyboard
- take the tour and start configuring your keyboard

# Features

You can navigate the app through the menu on the left.

## Pointing settings

These options apply to Charybdis trackballs and Dilemma trackpads. What the modes *do* is documented on the [Charybdis features]({{site.baseurl}}/fw/charybdis-features.html) page; this section is only where to click.

### Global trackball / trackpad settings

![](../assets/pics/argos/12.png)

In **Keyboard settings**, the pointing block sets defaults for the device:

- **Auto mouse layer** - moving the pointing device activates the mouse layer. See [auto pointer layer]({{site.baseurl}}/fw/charybdis-features.html#auto-pointer-layer).
- **Auto precision on mouse layer** - the mouse layer turns on precision. See [auto precision]({{site.baseurl}}/fw/charybdis-features.html#auto-precision-on-mouse-layer).
- **Pointer DPI** - default pointer sensitivity. See [DPI]({{site.baseurl}}/fw/charybdis-features.html#dpi).
- **Sniping DPI** - this is **precision mode** DPI; the UI still says “Sniping”. See [precision mode]({{site.baseurl}}/fw/charybdis-features.html#precision-mode).
- **Invert dragscroll X / Y** - reverse scroll direction for drag-scroll.

### Pointer mode settings

Hold (or toggle) a mode key to change what motion does:

{% include pointing_mode_inventory.md %}

![](../assets/pics/argos/15.png)

Open **Pointing modes configuration**. Pick a **Mode** in the dropdown. For that mode you can set:

- **Auto activate on layer** - turn the mode on when that layer is active
- **DPI** - sensitivity while that mode is active
- **Invert X axis** / **Invert Y axis**
- **Left / Right / Up / Down** - only for custom modes: the key sent for each direction (Edit / Delete)

Full behavior and keycodes: [Charybdis features]({{site.baseurl}}/fw/charybdis-features.html).

## Keyboard settings

![](../assets/pics/argos/13.png)
![](../assets/pics/argos/14.png)

In the *Keyboard settings* view, you can modify different options about your keyboard behavior.

**RGB settings**: Adjust brightness, pick an effect, and set hue, saturation, and speed for your keyboard’s lighting.

**Term settings**: Control how long you can hold keys apart for a combo, and how quickly a tap is recognized before a hold takes over.

**Export / import configuration**: Save your keymap, combos, tap dances, and related settings to a JSON file, or restore them later on the same or another compatible board.


## Multiple languages support

![](../assets/pics/argos/6.jpg)

If you are from Germany, France, Sweden… or many other countries and use an alternative layout, you can change it directly in the interface.

Once you set the language in your OS as well, the keymap will work directly without any changes to it.

## Layers 

![](../assets/pics/argos/1.jpg)

Your keyboard comes with multiple layers. When you press a “Layer key”, it will change the full keymap. It’s like the shift key, but turbo-charged. Argos supports up to 8 layers, and you can configure each one of them.

## Macros

![](../assets/pics/argos/2.jpg)

With Macros, you can create any combination of text, keys, and delays.

## Tap dance

![](../assets/pics/argos/5.jpg)

With the tap dance feature, you can:
- tap a key, get an output
- hold it, get a different output
- double tap
- tap + hold

You can configure this for each key, and configure the delay in the keyboard settings.

## Combos

![](../assets/pics/argos/3.jpg)

Press two (or three, or four) keys at the same time, and you get a separate one. That’s the power of combos. 

Easily add shortcuts like function keys, escape, tab, etc.

## RGB configuration

![](../assets/pics/argos/4.jpg)

Take full control with per-key, per-layer RGB control, as well as underglow for the keyboards that support it.

## Multiple themes

![](../assets/pics/argos/8.jpg)

Extensive collection of themes, automatically synced to your keyboard.

----

[bootmagic]: {{site.baseurl}}/fw/flashing.html#bootmagic
[argos]: https://argos.bastardkb.com