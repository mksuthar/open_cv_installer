#!/bin/bash

echo "====================================="
echo "Updating the system..(Required)"
echo "===================================="

sudo apt-get -y update

echo "====================================="
echo " It may ask for permission"
echo "======================================"
echo " "

echo "====================================="
echo "Installing Dependenciecs :: "
echo "======================================"

sudo apt-get install cmake libgtk2.0-dev python-numpy
sudo apt-get install libavformat-dev
sudo apt-get install ffmpeg

echo "====================================="
echo "GETTING OPENCV 2.4.6.1 "
echo "====================================="

sudo wget -o http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.6.1/opencv-2.4.6.1.tar.gz/download
sudo tar -xvzf opencv-2.4.6.1.tar.gz
sudo cd opencv*

echo "====================================="
echo "BUILDING.. OPENCV 2.4.6.1 "
echo "====================================="

cmake -D CMAKE_BUILD_TYPE=RELEASE -D BUILD_NEW_PYTHON_SUPPORT=ON -D BUILD_EXAMPLES=ON -D CMAKE_INSTALL_PREFIX=/usr/local ./
make && sudo make install
