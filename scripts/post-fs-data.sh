#!/system/bin/sh
grep __PKGNAME /proc/mounts | while read -r line; do
	mp=${line#* }
	mp=${mp%% *}
	umount -l ${mp%%\\*}
done
am force-stop __PKGNAME