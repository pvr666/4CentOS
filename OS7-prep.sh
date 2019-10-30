#!/bin/bash

yum update -y
 
yum install -y --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm
 
yum config-manager -y --enable PowerTools
 
yum -y groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
 
yum -y groupinstall "Development Tools"
yum -y install libglvnd-devel elfutils-libelf-devel "kernel-devel-uname-r == $(uname -r)"

yum update -y
