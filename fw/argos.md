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

Argos is a web app that lets you customize your keyboard directly in the browser.

You can change your keymap and layers, set up combos and tap dances, adjust RGB lighting, tune trackball or trackpad settings, and save backups. Changes are written directly to the device, with no need for flashing.

## How does it compare to QMK and VIA?

When configuring your keyboard, you have different options: QMK, VIA, Argos.

- QMK is the firmware that always runs on your keyboard. You can modify its code, compile and flash it
- VIA is a widely used visual configurator for keyboards. It lacks options and is visually old
- Argos is Bastard Keyboards’ dedicated web configurator: it covers the same kind of keymap editing as VIA, plus combos, tap dances, pointing-device tuning, and backups

# Requirements

First, make sure your keyboard has the latest Argos image. You can download the image on the [release page](https://github.com/bstiq/qmk_userspace_private/releases/tag/argos0.1) and flash it using the [bootmagic method][bootmagic].

You will need to use a chromium-based browser like Chrome or Edge.

# Getting started

- visit [argos.bastardkb.com][argos]
- click on `Connect` and select your keyboard
- take the tour and start configuring your keyboard

# Features

You can navigate the app through the menu on the left.

## Main sections

**Keymap**: Assign a keycode to every key on a visual layout of your board. You can also switch between layers. Includes special keys like Modifiers and Layer-Taps.

**Combos**: Press two or more keys at once to trigger a different action. For example, press A and B together to send C.

**Tap dances**: Give one physical key several behaviors depending on how you press it—a tap, a hold, a double-tap, or tap-and-hold. Assign tap-dance slots in the *tap dances* view, then place them on keys in the Keymap view.

**Keyboard settings**: Tune lighting, pointing device sensitivity, and timing options that affect combos and tap behavior. Export or import your full setup as a backup file.

**Test keyboard**: Press keys on your built board and see them light up on screen. Quite handy while assembling your kit or checking that every switch works!

## Keyboard settings

In the *Keyboard settings* view, you can modify different keyboard options.

**RGB settings**: Adjust brightness, pick an effect, and set hue, saturation, and speed for your keyboard’s lighting.

**Trackpad / trackball settings**: Set normal DPI and a lower “precision mode” DPI for fine cursor control (on boards with a pointing device).

**Term settings**: Control how long you can hold keys apart for a combo, and how quickly a tap is recognized before a hold takes over.

**Export / import configuration**: Save your keymap, combos, tap dances, and related settings to a JSON file, or restore them later on the same or another compatible board.

----

[bootmagic]: {{site.baseurl}}/fw/flashing.html#bootmagic
[argos]: argos.bastardkb.com