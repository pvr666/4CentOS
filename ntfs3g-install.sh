#!/bin/bash

dnf -y groupinstall "Development Tools"
dnf -y install tar

curl https://tuxera.com/opensource/ntfs-3g_ntfsprogs-2017.3.23.tgz | tar -xvpz

cd ntfs-3g_ntfsprogs-2017.3.23 && ./configure --prefix=/usr/local --disable-static && make && make install
