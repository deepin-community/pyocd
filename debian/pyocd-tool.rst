:Version: 0.12.0
:Copyright: 2006-2013 ARM Limited
:Title: pyocd-tool
:subtitle: ARM Cortex-M programming tool
:Manual section: "1"

Description
============

``pyocd-tool`` is an ARM Cortex-M programming tool

Summary
#######

pyOCD is an Open Source python based library for programming
and debugging ARM Cortex-M microcontrollers using CMSIS-DAP.

Includes support for flashing new binaries, resetting the device,
halt, step, resume read/write memory and set/remove breakpoints.

Support
#######

Firmware files included in the upstream source are NOT included in the
Debian package due to a lack of source code. Target files can be
downloaded separately from https://github.com/mbedmicro/pyOCD/tree/master/binaries

Available targets for use with --target option: lpc824, kinetis, w7500,
kv11z7, lpc4088qsb, kv10z7, k20d50m, ncs36510, kl28z, kl25z, k82f25615,
k28f15, maxwsnenv, max32600mbed, k22fa12, lpc4088, lpc4330, ke18f16, kl46z,
stm32f103rc, kl82z7, lpc54114, kl43z4, kl26z, lpc11xx_32, lpc800, rtl8195am,
kl05z, lpc1768, kw41z4, lpc4088dm, stm32f051, cortex_m, lpc11u24, kl02z,
kw01z4, k64f, k22f, ke15z7, nrf51, nrf52, kl27z4, kw40z4, k66f18

Usage
#####

usage: pyocd-tool [-h] [--version] [-H] [-N] [-k KHZ] [-b ID] [-t TARGET]
                  [-d LEVEL] [-da DAPARG [DAPARG ...]] [cmd] [args [args ...]]

Target inspection utility

positional arguments:
  cmd                   Command
  args                  Arguments for the command.

optional arguments:

  -h, --help            show this help message and exit

  --version             show program's version number and exit

  -H, --halt            Halt core upon connect.

  -N, --no-init         Do not init debug system.

  -k KHZ, --clock KHZ   Set SWD speed in kHz. (Default 1 MHz.)

  -b ID, --board ID     Use the specified board.

  -t TARGET, --target TARGET
                        Override target.

  -d LEVEL, --debug LEVEL
                        Set the level of system logging output. Supported
                        choices are: debug, info, warning, critical, error

  -da DAPARG [DAPARG ...], --daparg DAPARG [DAPARG ...]
                        Send setting to DAPAccess layer.
