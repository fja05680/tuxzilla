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
git_clone git://git.yoctoproject.org/poky.git
git_clone git://github.com/openembedded/meta-openembedded.git
git clone git://git.yoctoproject.org/meta-raspberrypi

cd poky; git checkout honister; cd ..
cd poky; git checkout meta-openembedded; cd ..
cd poky; git checkout meta-raspberrypi; cd ..

