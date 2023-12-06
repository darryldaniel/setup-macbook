#!/bin/zsh

# Mount time machine
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Mounting Time Machine drive"
diskutil mountDisk /dev/disk4
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Disk Mounted"

# Backup Time Machine
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backing up"
tmutil startbackup -a
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backup complete"

# Unmount the drive to prevent corruption
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Unmounting Time Machine drive"
diskutil unmountDisk /dev/disk4
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Done!"
