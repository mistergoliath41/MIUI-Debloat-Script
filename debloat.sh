#!/system/bin/sh
disable=(
"com.miui.msa.global"
"com.miui.analytics"
"com.android.traceur"
"com.android.shell"
"com.huaqin.diaglogger"
"com.xiaomi.joyose"
"com.huaqin.wifitrxtx"
"com.westalgo.calibration"
"com.xiaomi.discover"
)
uninstall=(
"com.alibaba.aliexpresshd"
"com.block.puzzlz.gamme.hippo.mi"
"com.sukhavati.gotoplaying.bubble.BubbleShooter.mint"
"com.bubble.free.bubblestory"
"com.crazy.juicer.xm"
"com.ebay.mobile"
"com.ebay.carrier"
"com.logame.eliminateintruder3d"
"com.facebook.katana"
"com.facebook.system"
"com.facebook.services"
"com.facebook.appmanager"
"cn.wps.xiaomi.abroad.lite"
"com.opera.browser"
"com.opera.preinstall"
"com.duckab.phone.remote.controller.peel.plugin"
"com.android.browser"
)

for app in "${disable[@]}"
do
	echo "Disabling app ${app}..."
	pm disable-user --user 0 $app >> /dev/null || echo 'The app '$app' is not installed.'
done

for app in "${uninstall[@]}"
do
	echo "Uninstalling app ${app}..."
	pm uninstall $app > /dev/null || pm uninstall -k --user 0 $app > /dev/null || echo 'The app '$app' is not installed.'
done

reboot