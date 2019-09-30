#!/bin/bash

# Copyright (C) 2017 Daniel Page <csdsp@bristol.ac.uk>
#
# Use of this source code is restricted per the CC BY-NC-ND license, a copy of 
# which can be found via http://creativecommons.org (and should be included as 
# LICENSE.txt within the associated archive or repository).

# software install: packaged software
sudo apt-get --quiet --assume-yes install default-jre 

# software install: Logisim
wget --quiet https://sourceforge.net/projects/circuit/files/2.7.x/2.7.1/logisim-generic-2.7.1.jar
sudo install -D --target-directory=/opt/logisim logisim-generic-2.7.1.jar  
rm --force logisim-generic-2.7.1.jar
    
# teaching material: download
for SHEET in 1 2 3 4 5 6 7 ; do
  wget --quiet --directory-prefix /home/vagrant/${UNIT_CODE} http://assets.phoo.org/${UNIT_PATH}/csdsp/arch/sheet/lab-${SHEET}_q.pdf
  wget --quiet --directory-prefix /home/vagrant/${UNIT_CODE} http://assets.phoo.org/${UNIT_PATH}/csdsp/arch/sheet/lab-${SHEET}_q.tar.gz
done

# teaching material: unarchive 
for SHEET in 1 2 3 4 5 6 7 ; do
  tar --extract --gunzip --directory /home/vagrant/${UNIT_CODE} --file /home/vagrant/${UNIT_CODE}/lab-${SHEET}_q.tar.gz
done
    
# teaching material: permissions
sudo chown --recursive vagrant:vagrant /home/vagrant/${UNIT_CODE}
