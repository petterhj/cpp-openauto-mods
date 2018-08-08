#!/bin/bash

echo "================================================================"
echo "Step 4: Build ilclient library"
echo "================================================================"

ILCLIENT_SOURCE_DIR="/opt/vc/src/hello_pi/libs/ilclient"

# Change to source directory
echo "> Changing directory to $ILCLIENT_SOURCE_DIR"

cd $ILCLIENT_SOURCE_DIR

# Make ilclient
echo "> Running make for ilclient"

make