#!/usr/bin/env bash
set -eox pipefail

repo init -u https://android.googlesource.com/platform/manifest -b android-11.0.0_r15
repo sync -j32

driver_package_urls=(
    https://dl.google.com/dl/android/aosp/google_devices-redfin-rd1a.201105.003.c1-e5276f63.tgz
    https://dl.google.com/dl/android/aosp/qcom-redfin-rd1a.201105.003.c1-f696533f.tgz
)
for url in ${driver_package_urls[*]}; do
    curl "$url" | tar -xz -O > extract_drivers.sh
    # bypass interactive license prompt
    printf "\nI ACCEPT\n" | ./extract_drivers.sh | tee
    rm extract_drivers.sh
done

source build/envsetup.sh

lunch aosp_redfin-userdebug
m droid -j32

rm -rf dist_output
mkdir dist_output
make dist DIST_DIR=dist_output
