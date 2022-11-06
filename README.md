# ReVanCed Magisk Module (rvcmm)
[![Build Modules](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)
[![CI](../../actions/workflows/ci.yml/badge.svg?event=schedule)](../../actions/workflows/ci.yml)

## Based on the [original template by j-hc](https://github.com/j-hc/revanced-magisk-module)

You can get the latest CI release from [here](../../releases).

To be able to use non-root variants of YT and Music you will need to install [Vanced MicroG](https://github.com/TeamVanced/VancedMicroG/releases).

[**mindetach module**](https://github.com/j-hc/mindetach-magisk) in the releases section detaches YouTube and YouTube Music from Play Store and blocks it from updating them.

## Features
 * Can build Magisk modules or non-root APKs
 * Updated daily with the latest versions of apps and patches in accordance with your configuration
 * Cleans APKs from unneeded libs to make them smaller
 * Fully open-source, every binary or APK is compiled without human intervention
 * Modules
     * recompile invalidated odex for YouTube and Music apps for faster usage
     * receive updates from Magisk app
     * do not break safetynet or trigger root detections used by certain apps
     * handle installation of the correct version of the stock app and all that
     * mount the patched app immediately without needing to reboot

#### **Note that the [CI workflow](../../actions/workflows/ci.yml) is scheduled to build the modules and APKs if there is a change. You may want to disable it.**