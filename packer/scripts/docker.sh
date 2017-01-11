#!/bin/bash -eux
export DEBIAN_FRONTEND=noninteractive 

apt-key adv \
       --keyserver hkp://ha.pool.sks-keyservers.net:80 \
       --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo debian-jessie main" | sudo tee --append /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install -y apt-transport-https ca-certificates gnupg2 docker-engine

sudo usermod -aG docker vagrant

service docker restart
