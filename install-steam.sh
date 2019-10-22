#!/bin/bash

dnf update -y

dnf install -y --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm

dnf config-manager -y --enable PowerTools

dnf -y groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
dnf update -y

#dnf -y config-manager --add-repo=https://negativo17.org/repos/epel-steam.repo
dnf -y install steam
