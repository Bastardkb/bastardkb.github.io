---
layout: default
title: Bluetooth build
nav_order: 14
parent: Help
---

# Table of contents

1. TOC
{:toc}

# Introduction

Wireless bluetooth capabilities are not supported officially on Bastard Keyboards.

If you still wish to build one of the Charybdis or Dactyl keyboards, in this page is detailed a basic outline of the work needed.

Before beginning, make sure you have some **good understanding of electronics and firmware**. Read the whole page before committing.

There is a video overview here made by EIGA: [youtube link](https://www.youtube.com/watch?v=Mks7QDxFreY)

# Caveats

There are a number of caveats involved.

Firmware:
- ZMK does not officially support input devices, so you will need to build from a fork
- There are some examples of Miryoku configurations for the Skeletyl and Charybdis Nano
- Out of the box, there might be connectivity or trackball connection issues, depending on your OS and hardware

Hardware:
- You will need custom PCBs (sensor, shield). Read more below
- At the moment, only the n!n and clones are supported. The XIAO BLE is not supported because it doesn't have enough pins, and there is no shield PCB for it
- There is no existing solution to secure the battery inside the case

Support:
- When building one of the officially supported Bastard Keyboards, you can get online support through email or discord
- When building this unsupported bluetooth keyboard, **you will only get very limited support**

# Custom hardware

A wireless Bastard Keyboard will use mostly the same Bill Of Materials as the wired ones. There are some custom PCBs and hardware you will need to get, you can read more below.

## Controllers

Like mentioned previously, at the moment only the nice!nano will work.
There are other existing BLE controllers like the open-source **mikoto** or the **SuperMini NRF52840** which could work but have not been tested yet.

There have been a few builds that handwire a Xiao BLE, but you lose the convenience of the shield, and will need to do your own firmware.

## Sensor

If you are building a Charybdis, you will need a custom sensor PCB. If you are building a Dactyl, you can skip to the next section.

The sensor used in the regular Charybdis is a PMW3360, for a wireless build we will use instead a **PMW3610**.

There is a PCB here: [PMW3610 breakout](https://github.com/Bastardkb/charybdis-pmw3610-breakout)

You will need to order the PCB factory-assembled, the release section contains the gerbers, BOM and POS files.

The PMW3610 sensor PCB connects in the same way as the regular sensor PCB.

## Shield PCB

If you are building a Dactyl, you can use the regular shield PCB.

If you are building a Charybdis, you will need a different shield PCB as the nice!nano does not have the bottom row of pins.

You can find it here: [Nice!Nano holder](https://github.com/victorlucachi/Elite-C-holder)

## Additional hardware

Here is a non-exhaustive list of additional required hardware (on top of a normal kit and all the custom hardware mentioned previously):
- battery and connector
- on/off switch


# Custom firmware

At the moment, ZMK does not support input devices.

There is an example of configuration here, which pulls from forks: [Miryoku config](https://github.com/bstiq/zmk-config)
