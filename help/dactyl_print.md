---
layout: default
title: Printing your Dactyl
nav_order: 2
parent: Help
---

# Table of contents

1. TOC
{:toc}

# Introduction

In this page, we detail how to get a great Dactyl print.
This information applies to the **Bastard Keyboard designs**, so your mileage may vary for other models.

{: .warning }
Our keyboards are complex models. While we did our best to make them less difficult to print, we **strongly** recommend to print a few tests beforehand to test support separation, surface quality, and bed adhesion.

# Material choice

- Do some test prints with different plastics to see which one works best for you.
- PLA is easiest to print.
- Plastics with patterns in it works best - eg. Prusament Galaxy or Fillamentum Extrafill.

# Print settings

## Temperature

Printing at lower temperatures makes the plastic more matte rather than glossy. We recommend 195 to 210C for PLA, depending on your plastic.

## For Prusa printers

If you are using a prusa printer, print in:

- 0.15mm structural profile
- supports on build plate only
- support type: grid (important!)
- nozzle temperature: 200 for MK3, MK3.5, MK4. 210 for MK4S

## For other printers

The following settings were tested on a BambuLabs A1 Mini and worked well.
They were worked from the `0.16mm High Quality` profile in Bambu Studio.

**Filament settings:**

| Description                | Value                         |
| -------------------------- | ----------------------------- |
| No cooling for the first   | 1 layer                       |
| Min fan speed threshold    | 65% fan speed, 75s layer time |
| Max fan speed threshold    | 80% fan speed, 6s layer time  |
| Auxiliary part cooling fan | 80%                           |
| Cooling overhang threshold | 0%                            |
| Keep fan always on         | true                          |
| Min print speed            | 20                            |
| Bed temperature            | 65                            |
| Nozzle temperature         | 210                           |

**Quality settings:**

| Description           | Value |
| --------------------- | ----- |
| Brim type             | None  |
| Layer height          | 0.15  |
| Initial layer height  | 0.15  |
| Line width: support   | 0.36  |
| Sparse infill density | 30%   |
| Wall loops            | 4     |

**Acceleration settings:**

| Description     | Value |
| --------------- | ----- |
| Normal printing | 2000  |


**Speed settings:**

| Description               | Value |
| ------------------------- | ----- |
| Gap infill                | 120   |
| Inner wall                | 60    |
| Internal solid infill     | 120   |
| Outer wall                | 25    |
| Overhang speed (10%, 25%) | 30    |
| Overhang speed (25%, 50%) | 25    |
| Sparse infill             | 120   |
| Support interface         | 50    |
| Support                   | 120   |
| Top surface               | 80    |
| Initial layer infill      | 60    |
| Initial layer             | 30    |


**Support settings:**

| Description                      | Value       |
| -------------------------------- | ----------- |
| Enable support                   | true        |
| On build plate only              | true        |
| Remove small overhangs           | false       |
| Style                            | Grid        |
| Threshold angle                  | 50          |
| Independent support layer height | false       |
| Initial layer expansion          | 8           |
| Base pattern                     | Rectilinear |
| Bottom Z distance                | 0.17        |
| Bottom interface layers          | 0           |
| Top interface spacing            | 0.2         |
| Top interface layers             | 5           |
| Support/object xy distance       | 1           |
| Top Z distance                   | 0.17        |

# Bed adhesion

Dactyls take a long time to print, so it's important to ensure good bed adhesion.

This will depend on your printer - if you have experience with it and are sure that it'll adhere properly, go ahead. It's still recommended to **stick around for the first few layers**, to check that the print is not warping. If the print warps, it will be visible during the final build, or may even (for plates and tents) prevent installation completely!

If your print does not stick, here are a few pointers:
- Add a brim, of 5 or 6 mm
- Use glue - paper glue or wood glue diluted with water works well
- Disable the parts fan for the first layer
- Make sure your bed is leveled correctly
