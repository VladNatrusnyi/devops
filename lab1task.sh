#!/bin/bash
backup_files="/home/vlad/lab1/"
dest="/home/vlad/backup/"
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"
echo "Starting backup $backup_files to $dest/$archive_file"
date
tar czf $dest/$archive_file $backup_files
echo "Backup finished"
