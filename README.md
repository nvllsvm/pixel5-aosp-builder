# Pixel 5 AOSP Builder
Build and flash AOSP to the Pixel 5 using only Docker

```
docker build . -t aosp
docker run -it -v $(pwd):/build aosp ./build.sh
docker run --privileged -v /dev/bus/usb:/dev/bus/usb -v $(pwd):/build aosp ./flash.sh
```
