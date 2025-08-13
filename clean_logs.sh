#!/bin/bash
LOG_DIR ="/var/log"
DAYS = 7

echo "Cleaning logs older than $DAYS days in the LOG_DIR"
sudo find "$LOG_DIR" -type f -mtime +$DAYS -exec rm -f {} \;
echo "Log Cleanup Completed. "


