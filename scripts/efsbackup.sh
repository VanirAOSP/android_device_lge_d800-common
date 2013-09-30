#!/sbin/sh

if [ ! -d "/sdcard/EFS_BACKUPS" ]; then
mkdir /sdcard/EFS_BACKUPS
fi
#Backup modemst1
if [ ! -f "/sdcard/EFS_BACKUPS/modemst1-backup.img" ]; then
dd if=/dev/block/platform/msm_sdcc.1/by-name/modemst1 of=/sdcard/EFS_BACKUPS/modemst1-backup.img
fi
#Backup modemst2
if [ ! -f "/sdcard/EFS_BACKUPS/modemst2-backup.img" ]; then
dd if=/dev/block/platform/msm_sdcc.1/by-name/modemst2 of=/sdcard/EFS_BACKUPS/modemst2-backup.img
fi


