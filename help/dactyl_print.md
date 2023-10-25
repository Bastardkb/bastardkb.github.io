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

# Quality settings

From personal experience, 0.15mm is a good layer height. Going lower than that doesn't show an increase in visual quality and adds a long time to the print.

Printing with a **0.4mm nozzle** is recommended over a 0.6, as larger nozzles leave more visible lines on the flat curves of the keyboard. The difference is very visible.

# Bed adhesion

Dactyls take a long time to print, so it's important to ensure good bed adhesion.

This will depend on your printer - if you have experience with it and are sure that it'll adhere properly, go ahead. It's still recommended to **stick around for the first few layers**, to check that the print is not warping. If the print warps, it will be visible during the final build, or may even (for plates and tents) prevent installation completely !

If your print does not stick, here are a few pointers:
- Add a brim, of 5 or 6 mm
- Use glue - paper glue or wood glue dilluted with water works well
- Disable the parts fan for the first layer
- Make sure your bed is leveled correctly

# Supports

Here's what we found works best for me in prusaslicer:

**General settings:**
- 75% XY separation
- 0.1-0.25mm Z distance
- 3-4 layer interface*
- 100% fan speed (except for 1st layer)
- 0.2mm interface spacing

*If your printer has good cooling, you may go to 1 or 0 layer interface to save print time

**For Scylla / Charybdis :**
- tree / organic supports

**For Skeletyl / Charybdis Nano :**
- 2-3mm rectilinear pattern




