#!/system/bin/sh

MODDIR=${0%/*}
. "$MODDIR/config"

rm -f "/data/adb/rvcmm/${MODDIR##*/}.apk"
rmdir "/data/adb/rvcmm"

rm -f "/data/adb/post-fs-data.d/$PKG_NAME-uninstall.sh"
