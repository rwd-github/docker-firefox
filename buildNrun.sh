#!/bin/bash

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker build -t ubuntu-firefox ${mypath}
#xhost +local:
docker run -ti --rm -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /home/user1/AlienFirefoxProfile/profile:/home/user/.mozilla \
--name ubuntu-firefox \
--hostname ubuntu-firefox \
ubuntu-firefox


