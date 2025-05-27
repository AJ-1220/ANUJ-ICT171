#!/bin/bash

# Script to backup /home/ubuntu/Documents into /home/ubuntu/backup with date-based filename

now=$(date +"%d_%m_%y")
SOURCE="/home/ubuntu/Documents"
DEST="/home/ubuntu/backup"

# Create backup directory if it does not exist
mkdir -p "$DEST"

# Zip the contents of Documents with the date in the filename
zip -r "$DEST/backup_$now.zip" "$SOURCE"

# Log success
echo "Backup completed successfully at $(date)" >> /home/ubuntu/backup/backup_log.txt
