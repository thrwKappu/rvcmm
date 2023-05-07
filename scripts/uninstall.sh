#!/system/bin/sh
{
	rm $NVBASE/rvcmm/__PKGNAME_rv.apk
	rmdir $NVBASE/rvcmm
	if __ISBNDL; then
		until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 1; done
		sleep 15
		pm uninstall __PKGNAME
	fi
} &
