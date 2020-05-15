#!/bin/bash

source /opt/devkitpro/switchvars.sh

cd /home
# Clone SM64PC Repo
git clone https://github.com/fgsfdsfgs/sm64pc.git

cd sm64pc

git checkout switch

cp /mnt/n64/baserom.us.z64 /home/sm64pc/baserom.us.z64
echo "Building SM64 for Switch"
make -j4 TARGET_SWITCH=1 BETTERCAMERA=$camera
