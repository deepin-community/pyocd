:Version: 0.12.0
:Copyright: 2006-2013 ARM Limited
:Title: pyocd-gdbserver
:subtitle: ARM Cortex-M programming tool
:Manual section: "1"

Description
============

``pyocd-gdbserver`` is an ARM Cortex-M programming tool

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

usage: pyocd-gdbserver [-h] [--version] [-p PORT_NUMBER] [-T TELNET_PORT] [--allow-remote] [-b BOARD_ID] [-l] [--list-targets]
                       [--json] [-d LEVEL] [-t TARGET] [-n] [-r] [-C VECTOR_CATCH] [-s] [-f FREQUENCY] [-o] [-bh]
                       [-ce | -se] [-u] [-hp] [-fp] [-S] [-G] [-c CMD [CMD ...]] [-da DAPARG [DAPARG ...]]

PyOCD GDB Server

optional arguments:
  -h, --help                                   show this help message and exit
  --version                                    show program's version number and exit
  -p PORT_NUMBER, --port PORT_NUMBER           Write the port number that GDB server will open.
  -T TELNET_PORT, --telnet-port TELNET_PORT    Specify the telnet port for semihosting.
  --allow-remote                               Allow remote TCP/IP connections (default is no).
  -b BOARD_ID, --board BOARD_ID                Connect to board by board id. Use -l to list all connected boards.
  -l, --list                                   List all connected boards.
  --list-targets                               List all available targets.
  --json                                       Output lists in JSON format. Only applies to --list and --list-targets.
  -d LEVEL, --debug LEVEL                      Set the level of system logging output. Supported choices are: debug, info, warning, critical, error
  -t TARGET, --target TARGET                   Override target to debug. -n, --nobreak         Disable halt at hardfault handler. (Deprecated)
  -r, --reset-break                            Halt the target when reset. (Deprecated)

  -C VECTOR_CATCH, --vector-catch VECTOR_CATCH Enable vector catch sources, one letter per enabled source in any order, or 'all' or 'none'. (h=hard
                                               fault, b=bus fault, m=mem fault, i=irq err, s=state
                                               err, c=check err, p=nocp, r=reset, a=all, n=none).
                                               (Default is hard fault.)

  -s, --step-int                               Allow single stepping to step into interrupts.
  -f FREQUENCY, --frequency FREQUENCY          Set the SWD clock frequency in Hz.
  -o, --persist                                Keep GDB server running even after remote has detached.
  -bh, --soft-bkpt-as-hard                     Replace software breakpoints with hardware breakpoints.
  -ce, --chip_erase                            Use chip erase when programming.
  -se, --sector_erase                          Use sector erase when programming.
  -u, --unlock                                 Unlock the device.
  -hp, --hide_progress                         Don't display programming progress.
  -fp, --fast_program                          Use only the CRC of each page to determine if it already has the same data.
  -S, --semihosting                            Enable semihosting.
  -G, --gdb-syscall                            Use GDB syscalls for semihosting file I/O.

  -c CMD [CMD ...], --command CMD [CMD ...]    Run command (OpenOCD compatibility).

  -da DAPARG [DAPARG ...], --daparg DAPARG [DAPARG ...]   Send setting to DAPAccess layer.
