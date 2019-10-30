#!/bin/bash

dnf -y groupinstall "Development Tools"
dnf -y install libglvnd-devel elfutils-libelf-devel "kernel-devel-uname-r == $(uname -r)"

grub2-editenv - set "$(grub2-editenv - list | grep kernelopts) nouveau.modeset=0"
#  systemctl isolate multi-user.target
