#!/system/bin/sh
{
	MODDIR=${0%/*}
	MODULES=${MODDIR%/*}
	NVBASE=${MODULES%/*}
	rm $NVBASE/rvcmm/__PKGNAME_rv.apk
	rmdir $NVBASE/rvcmm
} &
