#!/bin/bash

echo "================================================================"
echo "Step 0: Installing required packages for aasdk/openauto"
echo "================================================================"

sudo apt-get install -y cmake libusb-1.0-0-dev libssl-dev \
libprotobuf10 libprotobuf-dev protobuf-c-compiler protobuf-compiler \
libboost-log1.62.0 libboost-test1.62.0 libboost-thread1.62.0 libboost-date-time1.62.0 \
libboost-chrono1.62.0 libboost-atomic1.62.0 libboost-all-dev \
libqt5multimedia5 libqt5multimedia5-plugins libqt5multimediawidgets5 qtmultimedia5-dev \
libqt5bluetooth5 libqt5bluetooth5-bin qtconnectivity5-dev \
librtaudio-dev librtaudio5a librtaudio5a pulseaudio-module-bluetooth \
libpulse-mainloop-glib0 libfontconfig1 libinput10 libxkbcommon0 \
fbi libts-0.0-0 tsconf wiringpi insserv watchdog pulseaudio evtest
