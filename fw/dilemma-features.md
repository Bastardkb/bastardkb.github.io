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

The `vendor` keymap aims at providing a consistent experience out of the box. Because some features can be mutually exclusive (e.g. `Auto precision mode on layer` and `Auto pointer layer`), not all features are enabled by default. It may be necessary to rebuild the firmware to enable or disable some of the features listed below.

# Dilemma features

The Dilemma and Charybdis both use the `BK pointing module`, and as such work the same and can be configured in the same way.

For the full list of features and customization options, refer to the [Charybdis features page][charybdis]. 

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
[charybdis]: {{site.baseurl}}/fw/charybdis-features.html