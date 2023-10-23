---
layout: default
title: Installing the RGB components
nav_order: 6
parent: Build guides - Charybdis Nano
---

# Table of contents

1. TOC
{:toc}

# Introduction

In this section, we will install the per-key RGB components. If you don't have any in your kit, skip this section.

{: .tip }
The pictures in this section are for illustration, and may not match your PCB entirely. Read the instructions carefully.

# RGB Components - capacitors and resistors

![](../assets/pics/guides/charybdis/22.jpg)

**For the following step, please prepare:**

-   **Resistor** (x4) (red arrow, top)
-   **Capacitor** (x4) (blue arrow, bottom)
-   Flexible PCBs (x4)

The resistors and capacitors need to be installed on the 4 PCBs in the same way as we did the diodes previously.

![](../assets/pics/guides/charybdis/23.jpg)

On each PCB, there is:
- one **Resistor** (red arrow, left on the picture) - marked R
- one **Capacitor** (blue arrow, right on the picture) marked C

On each PCB, install the resistor and capacitor, **on the same side as the diodes.**

{: .tip }
You can use the same soldering technique as we used for the diodes earlier.

Use the below pictures for guidance - note **the resistors and capacitors are installed on the same side as the diodes.**

![](../assets/pics/guides/charybdis/24.jpg)

![](../assets/pics/guides/charybdis/25.jpg)

# RGB Components - LEDs

![](../assets/pics/guides/cnano/14.jpg)

**For the following step, please prepare:**

-   LED (x35)
-   Flexible PCBs (x4)


{: .warning }
The LEDs need to be installed in a very specific way. Read the following instructions carefully **first**, and then install them. **If you don't, they will not work!** 

![](../assets/pics/guides/charybdis/27.jpg)

Inspect the LED: there is one of the pins that has a slight chamfer in it. The plastic casing also has an indent. This is the GROUND pin. 

![](../assets/pics/guides/charybdis/28.jpg)

Inspect the PCBs: for each LED footprint, there is one pin that has a white line next to it.

**We need to match the chamfered pin of the LED, with the marked pin on the PCB.**


{: .warning }
The LEDs are sensitive to heat. Stay at most 2 seconds on each pad. If that doesn't work, try slowly increasing the temperature of your soldering iron.

![](../assets/pics/guides/charybdis/29.jpg)

-   Install the LEDs on the same side as the other SMD components
-   Solder them pad by pad
-   Go through the LEDs one by one
