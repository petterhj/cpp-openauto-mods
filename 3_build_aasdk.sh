#!/bin/bash

echo "================================================================"
echo "Step 3: Build aasdk"
echo "================================================================"

WORK_DIR=$HOME/openauto
AASDK_SOURCE_DIR=$WORK_DIR/aasdk
AASDK_BUILD_DIR=$WORK_DIR/aasdk_build

echo "> Working directory: $WORK_DIR"
echo "> AASDK source directory: $AASDK_SOURCE_DIR"

# Remove any existing build files
if [ -d "$AASDK_BUILD_DIR" ]; then
	echo "> Removing existing build files from $AASDK_BUILD_DIR"
	sudo rm -rf $AASDK_BUILD_DIR
fi

# Create build directory
echo "> Creating build directory for aasdk"
mkdir $AASDK_BUILD_DIR

# Change directory
echo "> Changing directory to $AASDK_BUILD_DIR"
cd $AASDK_BUILD_DIR

# Make
echo "> Running cmake for aasdk"

cmake -DCMAKE_BUILD_TYPE=Release $AASDK_SOURCE_DIR

echo "> Running make for aasdk"
make