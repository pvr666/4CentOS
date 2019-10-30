#!/bin/bash



yum -y groupinstall "Development Tools"
yum -y install libglvnd-devel elfutils-libelf-devel "kernel-devel-uname-r == $(uname -r)"
