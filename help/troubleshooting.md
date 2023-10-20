---
layout: default
title: Troubleshooting
nav_order: 2
parent: Help
---

1. TOC
{:toc}

# Post-Build Troubleshooting

This page offers remedies to common problems after completing your build. If your problem is not covered, or the offered solution does not help, please feel free ask the community on Discord: [bstkbd.com/discord](https://www.bstkbd.com/discord)

## One or more keys don't work!

A single key, which has neighbors that work, not working, is most often caused by either a faulty switch, or diode to column discontinuity.

You can either try measuring those with a multimeter, or turn the board on and bridge the diode's cathode to the right switch leg. If that produces a keypress, you can narrow it down further by bridging from the cathode to the left switch leg (diode to switch discontinuity), and, separately, between the two switch legs (faulty switch).

TODO: Images, explain how to locate diode and its cathode

## One or more rows or columns don't work!

If an entire row or column does not work, the most common cause is a broken row or column trace.
TODO: more, images

## The board turns off immediately when I plug in the USB connection!

wow, such short, very fire
TODO: explain, mention shorts, LEDs orientation

## One or more LEDs don't work!

TODO: explain chained nature, add pinout diagram

## The LEDs flicker or change color randomly!

TODO: explain chained nature, bad soldering

# Glossary

This section explains some of the terms used while troubleshooting in brief.
<dl>
    <dt>Bodge wire</dt>
    <dd>A wire that is used to bypass a discontinuity fault</dt>

    <dt>(Dis)continuity</dt>
    <dd>Continuity is the state of two points being electrically connected, such as two ends of a wire, or two pads on a PCB connected by a trace. A discontinuity is the absence of continuity.</dt>

    <dt>Fault</dt>
    <dd>Any undesired electrical connection or disconnection. ie. there is a connection where there shouldn't be one, or there isn't one where there should be one.</dt>
    
    <dt>Short</dt>
    <dd>An unwanted electrical connection. These may cause overheating and danger of fire on power supply connections, or undesired behavior in data lines, such as the key matrix or the LED data lines.</dd>

    <dt>Trace</dt>
    <dd>A copper connection within the PCB providing an electrical path. These are wires, just very flat and thin.</dd>

    <dt>Via</dt>
    <dd>A via is a tiny copper-plated hole in a PCB that is used whenever a trace needs to travel from one side of the board to the other.</dt>
</dl>
