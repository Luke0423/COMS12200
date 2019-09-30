#!/bin/bash

# package manager: update
sudo apt-get --quiet --assume-yes update
        
# software install: packaged software
sudo apt-get --quiet --assume-yes install gcc 
sudo apt-get --quiet --assume-yes install git
sudo apt-get --quiet --assume-yes install git-lfs
sudo apt-get --quiet --assume-yes install linux-image-extra-virtual
sudo apt-get --quiet --assume-yes install make
sudo apt-get --quiet --assume-yes install wget
sudo apt-get --quiet --assume-yes install xauth
