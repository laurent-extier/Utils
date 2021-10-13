#!/bin/bash

# Install tasks
sudo apt-get update

sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

# Install Docker
sudo apt-get update
sudo apt-get install docker-ce -y

# Post-installations tasks
sudo usermod -aG docker $USER