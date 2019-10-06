#!/bin/bash
CPUS=$((`nproc --all` + 1))
source /opt/devkitpro/switchvars.sh
./configure --host=aarch64-none-elf --prefix=/opt/devkitpro/portlibs/switch/ --exec-prefix=/opt/devkitpro/portlibs/switch/
cd libcharset
make install -j`echo $CPUS`
cd ../lib
make install -j`echo $CPUS`
cp include/iconv.h /opt/devkitpro/portlibs/switch/include/