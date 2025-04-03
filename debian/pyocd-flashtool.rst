:Version: 0.12.0
:Copyright: 2006-2013 ARM Limited
:Title: pyocd-flashtool
:subtitle: ARM Cortex-M programming tool
:Manual section: "1"

Description
============

``pyocd-flashtool`` is an ARM Cortex-M programming tool

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

usage: pyocd-flashtool [-h] [--version] [-b BOARD_ID] [-l] [-d LEVEL] [-t TARGET] [-f FREQUENCY] [-ce | -se] [-u]
                       [-a ADDRESS] [-n COUNT] [-s SKIP] [-hp] [-fp] [-da DAPARG [DAPARG ...]] [--mass-erase]
                       [file] [{bin,hex}]

Flash utility

positional arguments:
  file                  File to program
  {bin,hex}             File format. Default is to use the file extension
                        (.bin or .hex)

optional arguments:
  -h, --help            show this help message and exit

  --version             show program's version number and exit

  -b BOARD_ID, --board BOARD_ID
                        Connect to board by board id. Use -l to list all
                        connected boards.

  -l, --list            List all connected boards.

  -d LEVEL, --debug LEVEL
                        Set the level of system logging output. Supported
                        choices are: debug, info, warning, critical, error

  -t TARGET, --target TARGET
                        Override target to debug. Supported targets are:
                        lpc824, kinetis, w7500, kv11z7, lpc4088qsb, kv10z7,
                        k20d50m, ncs36510, kl28z, kl25z, k82f25615, k28f15,
                        maxwsnenv, max32600mbed, k22fa12, lpc4088, lpc4330,
                        ke18f16, kl46z, stm32f103rc, kl82z7, lpc54114, kl43z4,
                        kl26z, lpc11xx_32, lpc800, rtl8195am, kl05z, lpc1768,
                        kw41z4, lpc4088dm, stm32f051, lpc11u24, kl02z, kw01z4,
                        k64f, k22f, ke15z7, nrf51, nrf52, kl27z4, kw40z4,
                        k66f18

  -f FREQUENCY, --frequency FREQUENCY
                        Set the SWD clock frequency in Hz.

  -ce, --chip_erase     Use chip erase when programming.

  -se, --sector_erase   Use sector erase when programming.

  -u, --unlock          Unlock the device.

  -a ADDRESS, --address ADDRESS
                        Address. Used for the sector address with sector
                        erase, and for the address where to flash a binary.

  -n COUNT, --count COUNT
                        Number of sectors to erase. Only applies to sector
                        erase. Default is 1.

  -s SKIP, --skip SKIP  Skip programming the first N bytes. This can only be
                        used with binary files

  -hp, --hide_progress  Don't display programming progress.

  -fp, --fast_program   Use only the CRC of each page to determine if it
                        already has the same data.

  -da DAPARG [DAPARG ...], --daparg DAPARG [DAPARG ...]
                        Send setting to DAPAccess layer.

  --mass-erase          Mass erase the target device.

--chip_erase and --sector_erase can be used alone as individual commands, or
they can be used in conjunction with flashing a binary or hex file. For the
former, only the erase option will be performed. With a file, the erase
options specify whether to erase the entire chip before flashing the file, or
just to erase only those sectors occupied by the file. For a standalone sector
erase, the --address and --count options are used to specify the start address
of the sector to erase and the number of sectors to erase.
