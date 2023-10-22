---
layout: default
title: Frequently Asked Questions
nav_order: 2
parent: Help
---

1. TOC
{:toc}

# Hotswap

{: .question }
Is it possible to build a hotswap Bastard Keyboard?

**On the 3d keyboards (Scylla, Charybdis...):**
It's not possible to use MX sockets, because they need a specific footprint on the PCB which is not present. It is in theory possible to use Millmax sockets, though not recommended.

When installing the PCBs, you bend them to fit it to the curvature so the whole thing is continuously under tension, pulling away from the switch plate, only held in place by the switch pins and solder joints.

Generally mill-max has different holding strength depending on the switch pins and usage but it won't be enough to keep the PCB from pulling out reliably.

Some people have done millmax builds by gluing the PCBs, others have done it by using amoeba single switch PCBs and no glue (although this is basically like hand wiring with extra steps).
The global experience with gluing the flexible PCBs with Millmax is: you have to be very precise and careful, and installing and removing the switches is a pain. It is not recommended and overall terrible.

# Bluetooth

{: .question }
Is it possible to build a bluetooth / wireless Bastard Keyboard?

It is in theory possible, with a few caveats:
- it is not officially supported by Bastard Keyboards
- it requires a lot of custom hardware
- ZMK does not officially support wireless input devices yet
- you will get very limited support from the community, as only a few builds have been done

If you still wish to go ahead, **make sure you have a good understanding of electronics and firmware**.

There are more details in the bluetooth build section. 
// TODO link