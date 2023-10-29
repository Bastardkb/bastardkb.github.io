---
layout: default
title: Troubleshooting
nav_order: 2
parent: Help
---

# Table of contents

1. TOC
{:toc}

# Post-Build Troubleshooting

This page offers remedies to common problems after completing your build. If your problem is not covered, or the offered solution does not help, please feel free ask the community on Discord: [bstkbd.com/discord][discord]

## One or more keys don't work

A single key not working, which has neighbors that work, is most often caused by either a faulty switch, or diode to column discontinuity. It can often be fixed with a [bodge wire][Bodge wire].

You can either try measuring those with a multimeter, or turn the board on and bridge the diode's cathode to the right switch leg. If that produces a keypress, you can narrow it down further by bridging from the cathode to the left switch leg (diode to switch discontinuity), and, separately, between the two switch legs (faulty switch).

TODO: diode diagram, show how to find a switch's diode

## One or more rows or columns don't work

If an entire row or column, or a large part of it, does not work, the most common cause is a broken row or column trace. They can often be fixed with a [bodge wire][Bodge wire].

TODO: expand, link to diagnosing with KiCad guide

## The board turns off immediately when I plug in the USB connection

If you plug in the USB connector and the board immediately turns off - Perhaps your PC chimes USB connection immediately followed by USB disconnection - that is most often caused by a short on a power line.

{: .warning }
If you suspect a short, do not leave the board plugged in for a longer amount of time and do not leave it unattended. At the voltages and currents used here, a fire is unlikely, but not impossible.

A short on a current-carrying connection is often located either near the TRRS connectors, or on the LED chain, if present. Firstly, try connecting both halves individually by USB, without the TRRS connection. If it happens only on on side, continue investigation there. If it stops happening without the TRRS connection, focus your efforts on the TRRS jacks.

If you opted for per-key RGB LEDs, inspect them closely, paying attention to the LED's orientation, referring to the build guide for your model. An LED rotated the wrong way will cause a short.

## One or more LEDs don't work

If part of your RGB LEDs do not work, there is most likely a fault in the data line. Since the LEDs are arranged in a chain, inspect the data pins for the first LED that does not work, and for the last one that works. Once you have corrected this fault, the rest of your LEDs might work, or the fault might continue further down the chain.

TODO: add picture of pcb with led index numbers
TODO: add led pinout diagram
TODO: link to "how to look at schematics in KiCad" guide


## The LEDs flicker or change color randomly

If your LEDs are flickering on and off very quickly or very quickly changing colors, the most likely cause is a solder joint that is not quite connected, not being able to carry a signal consistently.

Since the LEDs are arranged in a chain, focus your efforts on the last LED that works correctly, and the first one that does not. Touch up the joints by melting the solder anew, adding more solder as needed.

TODO: add picture of pcb with led index numbers

# Glossary

This section explains some of the terms used while troubleshooting in brief.
<dl>
    <dt>Bodge wire</dt>
    <dd>A wire that is used to bypass a discontinuity fault</dd>

    <dt>(Dis)continuity</dt>
    <dd>Continuity is the state of two points being electrically connected, such as two ends of a wire, or two pads on a PCB connected by a trace. A discontinuity is the absence of continuity.</dd>
    
    <dt>Fault</dt>
    <dd>Any undesired electrical connection or disconnection. ie. there is a connection where there shouldn't be one, or there isn't one where there should be one.</dd>
    
    <dt>Short</dt>
    <dd>An unwanted electrical connection. These may cause overheating and danger of fire on power supply connections, or undesired behavior in data lines, such as the key matrix or the LED data lines.</dd>
    
    <dt>Trace</dt>
    <dd>A copper connection within the PCB providing an electrical path. These are wires, just very flat and thin.</dd>
    
    <dt>Via</dt>
    <dd>A via is a tiny copper-plated hole in a PCB that is used whenever a trace needs to travel from one side of the board to the other.</dd>
</dl>

----

[Bodge wire]: {{site.baseurl}}/help/bodge_wiring.html
[discord]: https://www.bstkbd.com/discord
