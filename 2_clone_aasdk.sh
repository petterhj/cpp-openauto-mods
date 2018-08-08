#!/bin/bash

echo "================================================================"
echo "Step 2: Clone aasdk repository"
echo "================================================================"

WORK_DIR=$HOME/openauto
AASDK_SOURCE_DIR=$WORK_DIR/aasdk
AASDK_REPO="https://github.com/opencardev/aasdk.git"
AASDK_BRANCH="master"

echo "> Working directory: $WORK_DIR"
echo "> AASDK source directory: $AASDK_SOURCE_DIR"

# Remove any existing source files
if [ -d "$AASDK_SOURCE_DIR" ]; then
	echo "> Removing existing source files from $AASDK_SOURCE_DIR"
	sudo rm -rf $AASDK_SOURCE_DIR
fi

# Change directory
echo "> Changing directory to $WORK_DIR"

cd $WORK_DIR

# Clone git repository
echo "> Cloning $AASDK_REPO [$AASDK_BRANCH]"

git clone -b master https://github.com/opencardev/aasdk.git