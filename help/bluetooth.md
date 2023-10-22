---
layout: default
title: Bluetooth build
nav_order: 14
parent: Help
---

1. TOC
{:toc}

# Introduction

Wireless bluetooth capabilities are not supported officially on Bastard Keyboards.

If you still wish to build one of the Charybdis or Dactyl keyboards, in this page is detailed a basic outline of the work needed.

Before beginning, make sure you have some **good understanding of electronics and firmware**. Read the whole page before comitting.

# Caveats

There are a number of caveats involved.

Firmware:
- ZMK does not officially support input devices, so you will need to build from a fork
- There are some examples of Miryoku configurations for the Skeletyl and Charybdis Nano
- Out of the box, there might be connectivity or trackball connection issues, depending on your OS and hardware

Hardware:
- You will need custom PCBs (sensor, shield). Read more below
- At the moment, only the n!n and clones are supported. The XIAO BLE is not supported because it doesn't have enough pins

Support:
- When building one of the officially supported Bastard Keyboards, you can get online support through email or discord
- When building this unsupported bluetooth keyboard, **you will only get very limited support**

# Required hardware

A wireless Bastard Keyboard will use mostly the same Bill Of Materials as the wired ones. There are some custom PCBs and hardware you will need to get, you can read more below.

## Sensor

If you are building a Charybdis, you will need a custom sensor PCB. If you are building a Dactyl, you can skip to the next section.

// TODO

## Shield

// TODO

## Others

// TODO on/off button, no need for audio jack

# Required firmware

// TODO