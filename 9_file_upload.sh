#!/bin/bash

echo "================================================================"
echo "Step 9: Upload files"
echo "================================================================"

WORK_DIR=$HOME/openauto
COLLECT_DIR=$WORK_DIR/collected
TARGET_SYSTEM=pi@192.168.1.17
TARGET_PATH=/home/pi

echo "> Working directory: $WORK_DIR"
echo "> Collect directory: $COLLECT_DIR"
echo "> Target system: $TARGET_SYSTEM"
echo "> Target path: $TARGET_PATH"

# Upload to crankshaft system
echo "> Uploading to crankshaft system"
scp -r $COLLECT_DIR $TARGET_SYSTEM:$TARGET_PATH