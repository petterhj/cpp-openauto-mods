#!/bin/bash

echo "================================================================"
echo "Step 5: Clone openauto repository"
echo "================================================================"

WORK_DIR=$HOME/openauto
OPENAUTO_SOURCE_DIR=$WORK_DIR/openauto
OPENAUTO_REPO="https://github.com/opencardev/openauto.git"
OPENAUTO_BRANCH="crankshaft-ng"

echo "> Working directory: $WORK_DIR"
echo "> OpenAuto source directory: $OPENAUTO_SOURCE_DIR"

# Remove any existing source files
if [ -d "$OPENAUTO_SOURCE_DIR" ]; then
	echo "> Removing existing source files from $OPENAUTO_SOURCE_DIR"
	sudo rm -rf $OPENAUTO_SOURCE_DIR
fi

# Change directory
echo "> Changing directory to $WORK_DIR"

cd $WORK_DIR

# Clone git repository
echo "> Cloning $OPENAUTO_REPO [$OPENAUTO_BRANCH]"

git clone -b $OPENAUTO_BRANCH $OPENAUTO_REPO