#!/bin/bash
# Backs up ~/Documents to ~/backups

BACKUP_SRC="$HOME/Documents"
BACKUP_DEST="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
mkdir -p "$BACKUP_DEST"
tar -czf "$BACKUP_DEST/backup_$TIMESTAMP.tar.gz" "$BACKUP_SRC"
echo "Backup completed: backup_$TIMESTAMP.tar.gz"
