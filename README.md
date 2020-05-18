# About

This is a docker image to build the [Nintendo switch port of sm64pc by fgsfdsfgs](https://github.com/fgsfdsfgs/sm64pc)

# Run
### Run via Docker CLI
Usage example
```
docker run --rm -v /home/files:/mnt/n64 -e "camera=1" -e "drawdistance=1" -e "extoptions=0" msimm29/sm64switch-build:latest
```

/home/files is a folder on your machine that contains baserom.VERSION.z64.  Versions can be (jp/us/eu), ex. baserom.us.z64.  You can use Windows file pathing if running in docker on Windows just don't change anything after the :

To use BETTERCAMERA set this in your run command.  If you don't want to use BETTERCAMERA then delete this part.
```
-e "camera=1"
```
To use NODRAWINGDISTANCE set this in your run command.  If you don't want to use NODRAWINGDISTANCE then delete this part.
```
-e "drawdistance=1"
```
To disable EXT_OPTIONS_MENU set this in your run command.  If you want to use EXT_OPTIONS_MENU then delete this part.
```
-e "extoptions=0"
```

When the build is finished it will copy the .nro file to the folder that contains your .z64 file

https://hub.docker.com/r/msimm29/sm64switch-build
