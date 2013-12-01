#!/bin/bash
#simple build script for bfg miner downloads all build tools and installs
#This script is released as public domain software under the condition that you leave the developers contact info below
#Developed by Joseph S. White joesfreicoinpool -at- gmail -dot- com http://pool.cr.rs
#FRC (FreiCoin) donation address 1FRCJoeWXbYe47cmuW3do8VoqAr9HuWbpJ
#BTC (BitCoin) donation address 1FRCJoeWXbYe47cmuW3do8VoqAr9HuWbpJ
#Released on 10/29/13
#
#Version 0.002a
rm -rfv ~/bfgminer/bfgminer
cd  ~/
sudo apt-get install git build-essential autoconf automake libtool pkg-config libcurl4-gnutls-dev libjansson-dev uthash-dev libncursesw5-dev libudev-dev libusb-1.0-0-dev libevent-dev libmicrohttpd-dev uthash-dev
git clone https://github.com/signal11/hidapi ~/bfgminer/hidapi
cd ~/bfgminer/hidapi
sudo ./bootstrap
sudo ./configure
sudo make
sudo make install
git clone https://github.com/luke-jr/bfgminer.git ~/bfgminer
cd ~/bfgminer
cd ~/bfgminer
./autogen.sh
./configure
make
