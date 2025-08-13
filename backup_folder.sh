#!/bin/bash

SOURCE =$1
DEST =$2

if [ -z "$SOURCE" ] || [ -z "$DEST" ]

echo "Usage: ./backup_folder.sh /source/folder /destination/folder"
exit 1

fi

TIMESTAMP=$(date +%y%m%d_%H%M%S)
DEST_FOLDER="$DEST/backup_$TIMESTAMP"

mkdir -p "$DEST_FOLDER"
cp -r "$SOURCE"/* "$DEST_FOLDER"
echo "Backup completed to $DEST_FOLDER"


