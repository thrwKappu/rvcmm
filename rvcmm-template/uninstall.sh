#!/system/bin/sh
{
	MODDIR=${0%/*}
	rm "$NVBASE/rvcmm/${MODDIR##*/}".apk
	rmdir "$NVBASE/rvcmm"
} &
