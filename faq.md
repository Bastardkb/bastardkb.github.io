---
layout: default
title: Frequently Asked Questions
nav_order: 2
---

# Table of contents

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

There are more details on the [bluetooth build][bluetooth] page.

# Keycaps

{: .question }
Which keycaps should I use?

Keycaps, just like switches, are a very personal choice. After gathering feedback from the community, a few profiles came out.

**MT3 profile**: those are sculpted keycaps, and there exist a large range of kits. This means you will probably find something that suits your aesthetic. We recommend getting an "ortho" kit, as it will contain everything necessary for a Bastard Keyboard.

You can get those from Drop, or any other website that offers them.


**DES profile**: those are keycaps designed by [Pseudoku at Asymplex](https://www.asymplex.xyz/), and are generally regarded as the most comfortable keycaps available. You can either get them from their website and support their open-source work, or generate the keycaps from [the github repository](https://github.com/pseudoku/PseudoMakeMeKeyCapProfiles) to order them resin printed. There is a set of thumb keys made specifically for the Skeletyl / Charybdis Nano.

**Other profiles:** there are a range of other profiles that are compatible with the keyboards, like: KAT, DSA, XDA, SA.


---

[bluetooth]: {{site.baseurl}}/help/bluetooth.html