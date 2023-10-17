## BKB standard

The "BKB standard" is a standard pinout that was defined by a committee of designers on the BastardKB Discord server when the first RP2040 were created in 2022.

![BKB standard pinout, on the Sea-picro](https://github.com/joshajohnson/sea-picro/raw/master/documentation/pinout/sea-picro-top-pinout-rory-render.png)

These boards are designed to be a drop-in replacement for keyboards wanting an upgrade from ATmega32u4 based pro micros (_eg._ Elite-C).

They are using the [RP2040 microcontroller chip](https://www.raspberrypi.com/products/rp2040/) designed by [Raspberry Pi](https://www.raspberrypi.com/), which features dual M0+ processors at up to 133MHz

## Pinout compatibility

Controller | Pin-compatible | Flash size | Vbus detection | Notes
---------- | -------------- | ---------- | -------------- | -----
[0xB2 Splinky](https://github.com/plut0nium/0xB2/) | Yes | _varies_ (up to 16MB) | Yes | Included in [Bastard Keyboards](https://bastardkb.com) kits
[Elite-Pi](https://docs.keeb.io/elite-pi-guide) | Yes | 2MB | Yes | Optionally, 2 extra GPIO pins can be exposed by setting jumpers on the Elite-Pi for a total of 25 GPIO.
[Sea-Picro EXT](https://github.com/joshajohnson/sea-picro) | Yes | 8MB | Yes | [One-button Reset / Bootloader circuit](https://github.com/joshajohnson/sea-picro#one-button-reset--bootloader-circuit). <br />Has an extra 5V level-shifted pin (GPIO 25) broken out.
[Frood](https://github.com/piit79/Frood) | Yes | 2MB | Yes |
[0xCB Helios](https://github.com/0xCB-dev/0xCB-Helios) | Yes | 16MB | Yes | Has a One-button Reset / Bootloader circuit, and ESD protection. <br />Available at [Keeb Supply](https://keeb.supply/products/0xcb-helios). <br />Has an extra 5V level-shifted pin (GPIO 25) broken out.
[Liatris](https://splitkb.com/products/liatris) | Yes | 16MB | Yes | Available at [splitkb.com](https://splitkb.com/collections/featured-products/products/liatris).
[SparkFun Pro Micro - RP2040](https://www.sparkfun.com/products/18288) | No* | 16MB | No | Pinout matches, but no bottom row. <br />The reset buttons collide with pin headers when installed face-down. <br />USB-C receptacle is top-mounted.
[Adafruit KB2040 - RP2040 Kee Boar Driver](https://www.adafruit.com/product/5302) | No | 8MB | No | Different pinout, no bottom row. <br />USB-C receptacle is top-mounted. |
[Blok](https://peg.software/docs/blok) | No | 16MB | Unspecified | Different i2c pins, no bottom row. |

## Firmware compatibility

All controllers above marked as pin-compatible, and using the QMK default `W25Q080` second-stage bootloader, should be compatible out-of-the-box with the [Bastard Keyboard firmwares](https://github.com/bastardkb/bastardkb-qmk/releases) targeting the Splinky v3, _ie._ `splinky_3` firmwares.

### Bootloader

See [QMK's RP2040 second stage bootloader selection](https://qmk.github.io/qmk_docs_devel/#/platformdev_rp2040?id=rp2040-second-stage-bootloader-selection) documentation.

## USB-C port compatibility

For the USB-C port to align perfectly in the Bastard Keyboard cases, the controller needs to use a USB-C connector of specific dimensions, otherwise it might be slightly offset on the Z axis.

The Splinky controller sold as part of the Bastard Keyboard kits are using a compatible port. If you are sourcing your own controller, make sure that the USB-C port dimensions are correct.
