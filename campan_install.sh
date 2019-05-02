#!/bin/sh
echo "=== Installing UAVPAL campan mod on Disco ==="
chmod +x /data/ftp/internal_000/disco/campan-*/adb
until [ "$ip_sc2" != "" ]; do
	ip_sc2=`netstat -nu |grep 9988 | head -1 | awk '{ print $5 }' | cut -d ':' -f 1`
	echo "Trying to detect Skycontroller 2 (ensure Skycontroller 2 is turned on and its power LED is green)"
	sleep 1
done

/data/ftp/internal_000/disco-campan-*/adb start-server 2>/dev/null

echo "Trying to connect to Skycontroller 2 ($ip_sc2) via adb"
until [ $(/data/ftp/internal_000/disco-campan-*/adb connect ${ip_sc2}:9050 2>/dev/null | grep 'connected to' | wc -l) -ge "1" ]; do
	echo "not successful, trying again"
	sleep 1
done
echo "Successfully connected to Skycontroller 2!"
echo "Copying campan mod files from drone to Skycontroller 2"
until /data/ftp/internal_000/disco-campan-*/adb push /data/ftp/internal_000/disco-campan-*/mapping_disco.cfg /data/lib/mppd/ 2>/dev/null; do echo "Error while copying files to Skycontroller 2, trying again"; done
echo "Restarting main process (mppd)"
/data/ftp/internal_000/disco-campan-*/adb shell "killall mppd" 2>/dev/null
echo "Removing UAVPAL campan mod installer"
rm -rf /data/ftp/internal_000/disco-campan-*
echo "All done! :)"
echo
exit
