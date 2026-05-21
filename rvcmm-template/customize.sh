. "$MODPATH/config"

if [ -n "$MODULE_ARCH" ] && [ "$MODULE_ARCH" != "$ARCH" ]; then
	abort "  ERROR: Wrong arch
  - This module: $MODULE_ARCH
  - Your device: $ARCH"
fi

if [ "$ARCH" = "arm" ]; then
	ARCH_LIB=armeabi-v7a
elif [ "$ARCH" = "arm64" ]; then
	ARCH_LIB=arm64-v8a
elif [ "$ARCH" = "x86" ]; then
	ARCH_LIB=x86
elif [ "$ARCH" = "x64" ]; then
	ARCH_LIB=x86_64
else abort "  ERROR: unsupported arch: ${ARCH}"; fi

RVPATH=/data/adb/rvcmm/${MODPATH##*/}.apk

set_perm_recursive "$MODPATH/bin" 0 0 0755 0777

su -M -c grep -F "$PKG_NAME" /proc/mounts | while read -r line; do
	mp=${line#* } mp=${mp%% *}
	su -M -c umount -l "${mp%%\\*}"
	ui_print " - Unmounted ${mp%%\\*}"
done
am force-stop "$PKG_NAME"

am force-stop "$PKG_NAME"

pmex() {
	OP=$(pm "$@" 2>&1 </dev/null)
	RET=$?
	echo "$OP"
	return $RET
}

if OP=$(dumpsys package "$PKG_NAME") && [ "$OP" ]; then
	if echo "$OP" | grep -m1 pkgFlags | grep -Fq UPDATED_SYSTEM_APP; then
		pmex uninstall-system-updates "$PKG_NAME" >/dev/null 2>&1
	fi
else
	if pmex install-existing "$PKG_NAME" >/dev/null 2>&1; then
		pmex uninstall-system-updates "$PKG_NAME" >/dev/null 2>&1
	fi
fi

IS_SYS=false
INS=true
if BASEPATH=$(pmex path "$PKG_NAME"); then
	echo >&2 "'$BASEPATH'"
	BASEPATH=${BASEPATH##*:} BASEPATH=${BASEPATH%/*}
	if [ "${BASEPATH:1:4}" != data ]; then
		ui_print "  - Detected $PKG_NAME as a system app"
		SCNM="/data/adb/post-fs-data.d/$PKG_NAME-uninstall.sh"
		mkdir -p /data/adb/post-fs-data.d
		echo "mount -t tmpfs none $BASEPATH" >"$SCNM"
		chmod +x "$SCNM"
		ui_print "  - Created the uninstall script."
		ui_print ""
		ui_print "  - Reboot and reflash the module!"

		abort?
	fi

	VERSION=$(dumpsys package "$PKG_NAME" 2>&1 | grep -m1 versionName=) VERSION="${VERSION#*=}"
	if [ "$VERSION" ] && [ "$VERSION" = "$PKG_VER" ]; then
			ui_print "  - $PKG_NAME is already up-to-date ($VERSION)"
		INS=false
	elif [ ! -f "$MODPATH/stock/base.apk" ]; then
		ui_print "  ERROR: Version mismatch
  - Installed:   '$VERSION'
  - This Module: '$PKG_VER'"
		abort
	fi
fi

install() {
	if [ ! -f "$MODPATH/stock/base.apk" ]; then
		abort "  ERROR: Stock $PKG_NAME apk was not found in Module"
	fi
	install_err=""
	VERIF1=$(settings get global verifier_verify_adb_installs)
	VERIF2=$(settings get global package_verifier_enable)
	settings put global verifier_verify_adb_installs 0
	settings put global package_verifier_enable 0

	SZ=$(stat -c "%s" "$MODPATH"/stock/*.apk | awk '{sum += $0} END {print sum}')
	for IT in 1 2; do
	ui_print "  - Installing $PKG_NAME ($PKG_VER)"
		if ! SES=$(pmex install-create --user 0 -i com.android.vending -r -S "$SZ"); then
			ui_print "  ERROR: install-create failed"
			install_err="$SES"
			break
		fi
		SES=${SES#*[} SES=${SES%]*}

		for apki in "$MODPATH/stock"/*.apk; do
			set_perm "${apki}" 1000 1000 644 u:object_r:apk_data_file:s0
			if ! op=$(pmex install-write -S "$SZ" "$SES" "$(basename "${apki}")" "${apki}"); then
				ui_print "  ERROR: install-write failed"
				install_err="$op"
				break
			fi
		done
		if [ "$install_err" ]; then break; fi

		if ! op=$(pmex install-commit "$SES"); then
			ui_print "$op"
			if echo "$op" | grep -q -e INSTALL_FAILED_VERSION_DOWNGRADE -e INSTALL_FAILED_UPDATE_INCOMPATIBLE; then
				ui_print "  - Uninstalling..."
				if ! op=$(pmex uninstall "$PKG_NAME"); then
					ui_print "$op"
					if [ $IT = 2 ]; then
						install_err="  ERROR: pm uninstall failed."
						break
					fi
				fi
				continue
			fi
			ui_print "  ERROR: install-commit failed"
			install_err="$op"
			break
		fi
		if BASEPATH=$(pmex path "$PKG_NAME"); then
			BASEPATH=${BASEPATH##*:} BASEPATH=${BASEPATH%/*}
		else
			install_err=" "
			break
		fi
		break
	done
	settings put global verifier_verify_adb_installs "$VERIF1"
	settings put global package_verifier_enable "$VERIF2"
	if [ "$install_err" ]; then
		ui_print "$install_err"
		abort "  $install_err"
	fi
}

if [ $INS = true ] && ! install; then abort; fi
BASEPATHLIB=${BASEPATH}/lib/${ARCH}
if [ $INS = true ] || [ -z "$(ls -A1 "$BASEPATHLIB")" ]; then
	ui_print "  - Extracting native libs"
	if [ ! -d "$BASEPATHLIB" ]; then mkdir -p "$BASEPATHLIB"; else rm -f "$BASEPATHLIB"/* >/dev/null 2>&1 || :; fi
	if op=$(unzip -o -j "$MODPATH/stock/base.apk" "lib/${ARCH_LIB}/*" -d "$BASEPATHLIB" 2>&1); then
		set_perm_recursive "${BASEPATH}/lib" 1000 1000 755 755 u:object_r:apk_data_file:s0
	else
		echo >&2 "  ERROR: extracting native libs failed: '$op'"
	fi
fi

ui_print "  - Setting Permissions"
set_perm "$MODPATH/base.apk" 1000 1000 644 u:object_r:apk_data_file:s0

ui_print "  - Mounting $PKG_NAME"
mkdir -p "/data/adb/rvcmm"
RVPATH=/data/adb/rvcmm/${MODPATH##*/}.apk
mv -f "$MODPATH/base.apk" "$RVPATH"

if ! op=$(su -M -c mount -o bind "$RVPATH" "$BASEPATH/base.apk" 2>&1); then
	ui_print "  ERROR: Mount failed!"
	ui_print "$op"
fi
am force-stop "$PKG_NAME"
ui_print "  - Optimizing $PKG_NAME"

cmd package compile -m speed-profile -f "$PKG_NAME" >/dev/null 2>&1
# nohup cmd package compile -m speed-profile -f "$PKG_NAME" >/dev/null 2>&1

if [ "$KSU" ]; then
	UID=$(dumpsys package "$PKG_NAME" 2>&1 | grep -m1 uid=)
	UID=${UID#*=} UID=${UID%% *}
	if [ -z "$UID" ]; then
		UID=$(dumpsys package "$PKG_NAME" 2>&1 | grep -m1 userId=)
		UID=${UID#*=} UID=${UID%% *}
	fi
	if [ "$UID" ]; then
		if ! OP=$("${MODPATH:?}/bin/$ARCH/ksu_profile" "$UID" "$PKG_NAME" 2>&1); then
			ui_print "  $OP"
			ui_print "  Please manually disable 'Unmount modules' option"
			ui_print "  for $PKG_NAME in your root manager app"
		fi
	else
		ui_print "  ERROR: UID could not be found for $PKG_NAME"
	fi
fi

ui_print "  - Cleanup"
rm -rf "${MODPATH:?}/bin" "$MODPATH/stock/"

ui_print "  - Finished"