---
layout: default
title: Flashing new firmware
nav_order: 15
parent: Firmware
---

# Table of contents

1. TOC
{:toc}

# Flashing

{: .tip }
This article applies only to rp2040-based controller in general and the splinky, splinktegrated and the integrated Dilemma controllers in particular.

*Flashing* refers to writing a new firmware binary onto a controller. This article will describe the process and the various ways of initiating it.

{: .tip }
A note about the TRS/TRRS cable: It does not disturb the flashing process and can remain in place. We advise you not to unplug the cable when flashing to reduce the risk of accidentally hot-plugging it.

# Bootloader

The first step is to put your keyboard into bootloader mode. During this time it will not function as a keyboard, but it will be ready to receive new firmware.

There are several ways of initiating bootloader mode:

## Bootmagic

To initiate bootmagic, unplug the USB cable, and then hold down the top right key for a right and, or the top left key for the left hand as you plug the USB cable in again. It is not necessary to hold both keys; The one on the hand that you are currently flashing is sufficient. Release the key shortly after inserting the plug.

Bootmagic will not only initiate bootloader mode, but also clears the keyboard's memory, which makes this method very well suited for troubleshooting.

/// PICTURE of several boards with bootmagic keys highlighted

{: .warning }
Clearing the memory will lose all changes you have made in via, as well as your chosen RGB effect and color, as well as your chosen DPI on a board with a pointing device. If you wish to retain your settings, please use a different method.

## The QK_BOOT keycode

There exists a dedicated key code that will immediately reboot into the bootloader.

Please refer to the [keymap guide][keymaps] to find the default location of this key for your keyboard.

## The button

Locate the button labeled "UPDATE" or "RESET" on your controller.

The Dactyl and Charybdis families have a hole in the bottom plate allowing access to the button with for example a pen. On the Dilemma family, the button is located on the top of the keyboard.

/// PICTURE of dactyl bottom and Dilemma with button/button holes highlighted

Tapping this button twice within 500 milliseconds will engage the bootloader.

## The hardware fallback {#hardware-fallback}

In case the currently flashed firmware will not work, for example if none is loaded if you self-sourced a controller, if something went wrong while flashing, or you accidentally flashed a firmware for a different board, an emergency method exists.

For this, you will need to unscrew the case bottom and locate two through holes, either labelled "BOOT" or unlabelled.

/// PICTURE of splinky, splinktegrated and Dilemma with boot pads highlighted

Next, unplug the USB connector, and then bridge the two pads, for example using metallic tweezers. Hold this connection while you plug in the USB connector, and release it shortly afterward.

# The USB drive

Once you successfully initiated the bootloader, your PC will detect a new USB drive labelled `RPI-RP2` containing two files, `INDEX.HTM` and `UF2_INFO.TXT`. To proceed, write the `.uf2` file that you downloaded from the release section or compiled yourself to this drive, for example by simply dragging and dropping it in your file manager, or by issuing a `qmk flash` command.

{: .warning }
Do not unplug the keyboard at this stage, as partially writing firmware will result in a non-functioning keyboard. Should this happen to you, see the [Hardware fallback](#hardware-fallback) section above.

The USB drive will disappear after writing the file. On MacOS and some Linux systems you may receive an error that writing failed, which you can ignore. The keyboard will reboot into the new firmware shortly afterwards.

{: .tip }
On a Linux system, you will need to ensure the drive is automatically mounted and user-writable for a `qmk flash` command to work. No specialized udev rule is required beyond mounting.

# The other hand

Next, unplug the USB connector and connect the other hand, and then repeat the procedure, flashing the same firmware file. If you use the `QK_BOOT` method, please note that your layout may now be mirrored!

Flashing both hands is not always required, please see the [splitkb article on this topic][splitkb-whentoflash] for details. However, if there is any doubt, always flash both hands.

---- 

[keymaps]: {{site.baseurl}}/fw/default-keymaps.html
[splitkb-whentoflash]: https://docs.splitkb.com/hc/en-us/articles/360011949679-When-do-I-need-to-flash-my-microcontroller
