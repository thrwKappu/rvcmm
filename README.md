# ReVanCed Magisk Module (rvcmm)

**Only available in root variant, hence the repo name*

[![Build Modules](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)
[![CI](../../actions/workflows/ci.yml/badge.svg?event=schedule)](../../actions/workflows/ci.yml)

## Based on the [original template by j-hc](https://github.com/j-hc/revanced-magisk-module)

* You can get the latest CI release from [here](../../releases)
* __mindetach module__ in the [release](../../releases) section detaches YouTube and YouTube Music from Play Store and blocks it from updating them.

## Features

* Support all present and future ReVanced and [ReVanced Extended](https://github.com//inotia00/revanced-patches) apps
* Can build Magisk modules and non-root APKs
* Updated daily with the latest versions of apps and patches
* Cleans APKs
* Modules
  * recompile invalidated odex for faster usage
  * receive updates from Magisk app
  * do not break safetynet or trigger root detections
  * handle installation of the correct version of the stock app and all that

__Note that the [CI workflow](../../actions/workflows/ci.yml) is scheduled to build the modules and APKs if there is a change. You may want to disable it.__
