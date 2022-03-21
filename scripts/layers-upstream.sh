#!/bin/sh
#
# Under tuxzilla, Perform operations to setup third party layers from upstream.
#
# Run from root of your project. i.e. tuxzilla
# tuxzilla
# |-- poky
# |-- meta-openembedded
# |-- meta-raspberrypi
# |-- neta-fja

#
# Used by developers and continuous integration.
#
# clone - clone from SRC_URI
# checkout - checkout SRCREV for each one
#

cd ..
git clone git://git.yoctoproject.org/poky.git
git clone git://github.com/openembedded/meta-openembedded.git
git clone git://git.yoctoproject.org/meta-raspberrypi.git

cd poky; git checkout honister; cd ..
cd meta-openembedded; git checkout honister; cd ..
cd meta-raspberrypi; git checkout honister; cd ..

