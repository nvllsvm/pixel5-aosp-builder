# Pixel 5 AOSP Builder
Build AOSP for the Pixel 5 using a Docker image

## Building AOSP
```
docker build . -t aosp
docker run -it -v $(pwd):/build aosp ./build.sh
```

## Flashing
```
export ANDROID_PRODUCT_OUT=$(pwd)/out/target/product/redfin
fastboot flashall -w
```
