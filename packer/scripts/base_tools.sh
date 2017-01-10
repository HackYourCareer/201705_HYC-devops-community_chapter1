#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 
 
apt-get -y update
apt-get -y install apt-listchanges bash-completion build-essential curl ca-certificates ntpdate unzip module-assistant net-tools mc htop apt-transport-https
apt-get -y upgrade
apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade
