#!/bin/bash

apt update
apt install wget

cd /usr/local/src
wget https://root.cern.ch/download/root_v6.14.06.source.tar.gz
tar xvf root_v6.14.06.source.tar.gz
mkdir buildroot

apt-get install -y git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
libxft-dev libxext-dev

apt-get install -y gfortran libssl-dev libpcre3-dev \
xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
libmysqlclient-dev libfftw3-dev libcfitsio-dev \
graphviz-dev libavahi-compat-libdnssd-dev \
libldap2-dev python-dev libxml2-dev libkrb5-dev \
libgsl0-dev libqt4-dev

cd buildroot

cmake -DCMAKE_INSTALL_PREFIX=/usr/local/root/root-6.14.06 -Dminuit2=ON -Dxml=ON -Dmathmore=ON ../root-6.14.06
cmake --build . -- -j2
make install
