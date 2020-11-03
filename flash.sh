#!/usr/bin/env bash
set -e

source build/envsetup.sh
lunch aosp_redfin-userdebug

fastboot flashall -w
