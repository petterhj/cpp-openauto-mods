#!/bin/bash

echo "================================================================"
echo "Step 8: Collect built files"
echo "================================================================"

WORK_DIR=$HOME/openauto
AASDK_SOURCE_DIR=$WORK_DIR/aasdk
AASDK_BUILD_DIR=$WORK_DIR/aasdk_build
OPENAUTO_SOURCE_DIR=$WORK_DIR/openauto
OPENAUTO_BUILD_DIR=$WORK_DIR/openauto_build
COLLECT_DIR=$WORK_DIR/collected

echo "> Working directory: $WORK_DIR"
echo "> Collect directory: $COLLECT_DIR"

# Remove any existing build files
if [ -d "$COLLECT_DIR" ]; then
	echo "> Removing existing collected files from $COLLECT_DIR"
	sudo rm -rf $COLLECT_DIR
fi

# Create collect directory
echo "> Creating collect directory"
mkdir $COLLECT_DIR

# Collect built binaries/libraries
echo "> Collecting built binaries and libraries"

 cp -v $AASDK_SOURCE_DIR/lib/libaasdk.so $COLLECT_DIR
 cp -v $AASDK_SOURCE_DIR/lib/libaasdk_proto.so $COLLECT_DIR
 cp -v $OPENAUTO_SOURCE_DIR/bin/autoapp $COLLECT_DIR
 cp -v $OPENAUTO_SOURCE_DIR/bin/btservice $COLLECT_DIR

echo "> Done collecting built files"