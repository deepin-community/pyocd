#!/bin/sh

set -e

if [ -d ./binaries/ ]; then
	rm -rf ./binaries/
fi

if [ -d ./elf_files/ ]; then
	rm -rf ./elf_files/
fi

if [ -f ./src/gdb_test_program/gdb_test.elf ]; then
	rm ./src/gdb_test_program/gdb_test.elf
fi

