# About

This is a docker image to build the [Nintendo switch port of sm64pc by fgsfdsfgs](https://github.com/fgsfdsfgs/sm64pc)

# Run
### Run via Docker CLI
Usage example
```
docker run --rm -v /home/files:/mnt/n64 -e "camera=1" msimm29/sm64switch-build:latest
```

/home/files is a folder on your machine that contains baserom.us.z64.  You can use Windows file pathing if running in docker on Windows just don't change anything after the :

Set camera=1 for BETTERCAMERA or camera=0 for regular camera

When the build is finished it will copy the .nro file to the folder that contains your .z64 file

https://hub.docker.com/r/msimm29/sm64switch-build
