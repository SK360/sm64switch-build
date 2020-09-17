#!/bin/bash
echo "Running switchvars.sh"
source /opt/devkitpro/switchvars.sh

region=$(ls /mnt/n64/*.z64 |grep -oP '(?<=[.])\w+(?=[.])')
echo "Region identified as $region"
[[ -z "$camera" ]] || export cam=BETTERCAMERA=$camera
[[ -z "$drawdistance" ]] || export draw=NODRAWINGDISTANCE=$drawdistance
[[ -z "$extoptions" ]] || export extopt=EXT_OPTIONS_MENU=$extoptions

cd /home
# Clone SM64PC Repo
git clone https://github.com/fgsfdsfgs/sm64pc.git

cd sm64pc

git checkout switch

cp /mnt/n64/baserom.$region.z64 /home/sm64pc/baserom.$region.z64
echo "Building SM64 for Switch using options:"
echo "make $cam $draw $extopt VERSION=$region -j4"
if [ $60fps -eq 1 ]
then
  echo "Applying 60fps Patch"
  git apply enhancements/60fps_ex.patch
fi
make $cam $draw $extopt VERSION=$region -j4
cp /home/sm64pc/build/"$region"_nx/sm64*nro /mnt/n64
