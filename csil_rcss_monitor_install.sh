#!/bin/bash
#Easy install of rcssmonitor on CSIL computers.
#dreviczk@sfu.ca Oct 14 2017

set -e #exit script if any cmd has nonzero exit value (error)

./configure --prefix="/home/$USER/rcss"

sed -i "s/-lfontconfig/-l:libfontconfig.so.1/g" src\/Makefile
sed -i "s/-laudio/-l:libaudio.so.2/g" src\/Makefile
sed -i "s/-lfreetype/-l:libfreetype.so.6/g" src\/Makefile

sed -i "s/-lfontconfig/-l:libfontconfig.so.1/g" Makefile
sed -i "s/-laudio/-l:libaudio.so.2/g" Makefile
sed -i "s/-lfreetype/-l:libfreetype.so.6/g" Makefile

make;
make install;
