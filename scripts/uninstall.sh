#!/system/bin/sh
{
	MODDIR=${0%/*}
	rm $NVBASE/rvcmm/${MODDIR##*/}.apk
	rmdir $NVBASE/rvcmm
	# if __ISBNDL; then
	# 	until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 1; done
	# 	sleep 15
	# 	pm uninstall __PKGNAME
	# fi
} &
