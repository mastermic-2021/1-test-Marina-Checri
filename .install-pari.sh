#!/bin/bash
VERSION="2.11.1"
if [ ! -f pari-$VERSION/Makefile ]; then
    echo "downloading pari"
    wget https://pari.math.u-bordeaux.fr/pub/pari/unix/pari-$VERSION.tar.gz
    tar -xf pari-$VERSION.tar.gz
fi
cd pari-$VERSION
./Configure
make -j4 gp
sudo make install
