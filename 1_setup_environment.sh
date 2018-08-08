#!/bin/bash

echo "================================================================"
echo "Step 1: Setup build environment"
echo "================================================================"

WORK_DIR=$HOME/openauto

echo "> Current home directory: $HOME"

cd $HOME

if [ ! -d "$WORK_DIR" ]; then
	echo "Creating working directory"
	mkdir $WORK_DIR
fi

echo "Using working directory: $WORK_DIR"