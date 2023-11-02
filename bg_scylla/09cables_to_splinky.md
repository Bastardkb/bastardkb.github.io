---
layout: default
title: Connecting the ribbon cables to the Splinky
nav_order: 9
parent: Build guide - Scylla
---

# Table of contents

1. TOC
{:toc}

# Introduction

Now that we finished preparing the Splinky and the flexible PCBs, it's time to connect all of them together. 

Be careful, because the Splinky shield assemblies are not reversible! We will start 
with the left side, and then proceed to the right side.

{: .note }
We will detail only the left side, as the right side is the same, but symmetric.

# Left side

![](../assets/pics/guides/charybdis/44.jpg)

**For the following step, please prepare:**
- Splinky shield assembly (left)
- flexible plates assembly (left, with 5 keys on the thumb cluster)

Inspect the shield assembly: there is a `MATRIX` label, with a 5-pin and a 6-pin connector. We will connect it to the cables of the flexible PCB assembly.

![](../assets/pics/guides/charybdis/45.jpg)

{: .warning }
The cables need to be soldered on a specific side of the shield - otherwise, they will be difficult to route properly. Make sure to inspect the pictures carefully before soldering!

Install the cables coming out of the flexible PCB assembly into those connectors, and solder them:

![](../assets/pics/guides/charybdis/59.jpg)
![](../assets/pics/guides/charybdis/62.jpg)

## Left side - RGB (optional)

This step is optional, if you have per-key RGB.

Solder the long ribbon cable coming from the plate to the `RGB` header on the Shield PCB. Use the picture below for reference.

![](../assets/pics/guides/generic/4.jpg)

# Right side

Proceed to do the same thing for the right side.
