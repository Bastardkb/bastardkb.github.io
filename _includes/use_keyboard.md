# Table of contents

1. TOC
{:toc}

# Introduction

Congratulations on successfully building your keyboard!

The Bastard Keyboards come with a range of features, and it's also easy to customize them. On this page you will find additional information on how to use them and make them your own.

{: .note }
The default firmware requires the USB cable be connected to the right side of the keyboard.

# Daily use

## Default keymap

You can find pictures of the default keymaps on the [default keymaps page][keymaps].

Alternatively, you can also plug in your keyboard and visualize the keymap using Argos (see Argos section).

# Customization

To customize your keyboard, you can use either Argos or QMK.

## Using Argos

![](../assets/pics/argos/16.png)

All Bastard Keyboards come flashed with Argos. Argos is an additional layer that comes on top of QMK, and comes with a handy graphical interface. It enables customization without having to compile any code. 

It supports:
- macros
- combos
- pointing device configuration
- multiple languages
- pointer modes configuration
- tap dances
- per-key and per-layer RGB configuration

You can open the [Argos Web Interface through argos.bastardkb.com](argos.bastardkb.com). At the moment, only WebHID-enabled browsers work (eg. Chrome and Chromium-based).

[You can read more about Argos here][argosdocs].

## Using QMK

This is for advanced users. 

- how to compile a custom hardware for your keyboard: [how to compile your own firmware][compile-firmware].
- advanced customization of the Charybdis (and smaller variants): [customize your Charybdis][customize-chary].
- advanced customization of the Dilemma (and smaller variants): [customize your Dilemma][customize-dilemma].

---

[customize-chary]: {{site.baseurl}}/fw/charybdis-features.html
[customize-dilemma]: {{site.baseurl}}/fw/dilemma-features.html
[keymaps]: {{site.baseurl}}/fw/default-keymaps.html
[flashing]: {{site.baseurl}}/fw/flashing.html
[compile-firmware]: {{site.baseurl}}/fw/compile-firmware.html
[argosdocs]: {{site.baseurl}}/fw/argos.html