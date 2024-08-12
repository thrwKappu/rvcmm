#!/system/bin/sh
{
	MODDIR=${0%/*}
	rm "/data/adb/rvcmm/${MODDIR##*/}".apk
	rmdir "/data/adb/rvcmm"
} &
