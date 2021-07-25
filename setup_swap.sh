#!/bin/sh
SWAPFILE=/var/swapfile
SWAP_MEGABYTES=2048

sudo /bin/dd if=/dev/zero of=$SWAPFILE bs=1M count=$SWAP_MEGABYTES
sudo /bin/chmod 600 $SWAPFILE
sudo /sbin/mkswap $SWAPFILE
sudo /sbin/swapon $SWAPFILE
