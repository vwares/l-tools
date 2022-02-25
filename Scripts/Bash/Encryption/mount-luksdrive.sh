#!/bin/bash

# Check syntax
if [ -z "$2" ]; then
  echo "Syntax : $0 [device partition] [mount point]"
  echo "   e.g : $0 /dev/sda1 /mnt/hd"
  exit
fi

# Set variables
export devicename="$1" # e.g "/dev/sda1"
export mountpoint="$2" # e.g "/mnt/hd"
export mappername=$(basename $mountpoint)

echo cryptsetup close $mappername
echo cryptsetup luksOpen "$devicename" "$mappername"
echo mount /dev/mapper/$mappername $mountpoint
