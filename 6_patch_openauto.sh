#!/bin/bash

echo "================================================================"
echo "Step 6: Patch openauto"
echo "================================================================"

WORK_DIR=$HOME/openauto
CURRENT_DIR="`cd $0 >/dev/null 2>&1; pwd`" > /dev/null 2>&1
OPENAUTO_PATCH_DIR=$CURRENT_DIR/patch/openauto
OPENAUTO_SOURCE_DIR=$WORK_DIR/openauto

echo "> Working directory: $WORK_DIR"
echo "> OpenAuto source directory: $OPENAUTO_SOURCE_DIR"
echo "> Patch directory: $OPENAUTO_PATCH_DIR"

# Patch source files
echo "> Patching..."

cp --verbose -rf $OPENAUTO_PATCH_DIR/* $OPENAUTO_SOURCE_DIR

echo "> Done copying files!"