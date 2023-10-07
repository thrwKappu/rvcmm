# ReVanCed Magisk Module (rvcmm)

**Only available in root variant, hence the repo name*

[![Build Modules](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)
[![CI](../../actions/workflows/ci.yml/badge.svg?event=schedule)](../../actions/workflows/ci.yml)

## Based on the [original template by j-hc](https://github.com/j-hc/revanced-magisk-module)

* You can get the latest CI release from [here](../../releases)
* *Use [**zygisk-detach**](https://github.com/j-hc/zygisk-detach) to detach YouTube and YT Music from Play Store if you are using magisk modules.*

## Features

* Support all present and future ReVanced and [ReVanced Extended](https://github.com//inotia00/revanced-patches) apps
* Can build Magisk modules and non-root APKs
* Updated daily with the latest versions of apps and patches
* Optimize APKs and modules for size
* Modules
  * recompile invalidated odex for faster usage
  * receive updates from Magisk app
  * do not break safetynet or trigger root detections
  * handle installation of the correct version of the stock app and all that
  * support Magisk and KernelSU

__Note that the [CI workflow](../../actions/workflows/ci.yml) is scheduled to build the modules and APKs if there is a change. You may want to disable it.__
