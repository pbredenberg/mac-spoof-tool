#!/bin/bash
read -p "Enter your MacBook's Wifi interface (example; en1 | en0 | etc): " INTERFACE
echo "Getting wifi MAC address"
MAC=$(ifconfig $INTERFACE | awk '/ether/{print $2}')
echo $MAC
read -p "Enter your Roku's MAC address: " RMAC
$(ifconfig $INTERFACE ether $RMAC )
echo "You should now be prompted to authenticate with your hotel's wifi. Please wait for the authentication window to appear, and when ready, press Return to set your MAC Address back to default... "
read -p "Press Return when ready: "
$(ifconfig $INTERFACE ether $MAC )