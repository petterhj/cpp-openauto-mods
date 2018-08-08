#!/bin/bash

echo "================================================================"
echo "Step 7: Build openauto"
echo "================================================================"

WORK_DIR=$HOME/openauto
AASDK_SOURCE_DIR=$WORK_DIR/aasdk
AASDK_BUILD_DIR=$WORK_DIR/aasdk_build
OPENAUTO_SOURCE_DIR=$WORK_DIR/openauto
OPENAUTO_BUILD_DIR=$WORK_DIR/openauto_build

echo "> Working directory: $WORK_DIR"
echo "> AASDK source directory: $OPENAUTO_SOURCE_DIR"

# Remove any existing build files
if [ -d "$OPENAUTO_BUILD_DIR" ]; then
	echo "> Removing existing build files from $OPENAUTO_BUILD_DIR"
	sudo rm -rf $OPENAUTO_BUILD_DIR
fi

# Create build directory
echo "> Creating build directory for openauto"
mkdir $OPENAUTO_BUILD_DIR

# Change directory
echo "> Changing directory to $OPENAUTO_BUILD_DIR"
cd $OPENAUTO_BUILD_DIR

# Link needed libs
echo "> Linking needed libraries"
ln -s /opt/vc/lib/libbrcmEGL.so /usr/lib/arm-linux-gnueabihf/libEGL.so
ln -s /opt/vc/lib/libbrcmGLESv2.so /usr/lib/arm-linux-gnueabihf/libGLESv2.so
ln -s /opt/vc/lib/libbrcmOpenVG.so /usr/lib/arm-linux-gnueabihf/libOpenVG.so
ln -s /opt/vc/lib/libbrcmWFC.so /usr/lib/arm-linux-gnueabihf/libWFC.so

# Make
echo "> Running cmake for openauto"
echo "   -DAASDK_INCLUDE_DIRS=$AASDK_SOURCE_DIR/include"
echo "   -DAASDK_LIBRARIES=$AASDK_SOURCE_DIR/lib/libaasdk.so"
echo "   -DAASDK_PROTO_INCLUDE_DIRS=$AASDK_BUILD_DIR"
echo "   -DAASDK_PROTO_LIBRARIES=$AASDK_SOURCE_DIR/lib/libaasdk_proto.so"

cmake -DCMAKE_BUILD_TYPE=Release -DRPI3_BUILD=TRUE -DAASDK_INCLUDE_DIRS="$AASDK_SOURCE_DIR/include" \
-DAASDK_LIBRARIES="$AASDK_SOURCE_DIR/lib/libaasdk.so" -DAASDK_PROTO_INCLUDE_DIRS="$AASDK_BUILD_DIR" \
-DAASDK_PROTO_LIBRARIES="$AASDK_SOURCE_DIR/lib/libaasdk_proto.so" $OPENAUTO_SOURCE_DIR

echo "> Running make for openauto"

make