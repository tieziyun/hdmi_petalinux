#!/bin/bash

# Go to the script's directory
cd "$(dirname "$0")" || exit 1

# Get project name from parent folder
project_name="$(basename "$(dirname "$(pwd)")")"
echo "Project name: $project_name"

# Source PetaLinux settings if not already done
if [ -z "$PETALINUX" ]; then
    echo "Sourcing petalinux/settings.sh..."
    source ~/petalinux/settings.sh
else
    echo "PetaLinux settings already sourced."
fi

 cd ..
# # Package boot files
 petalinux-package --boot --force   --fsbl   --fpga  --u-boot

# Go to images/linux folder
cd images/linux || { echo "images/linux folder not found"; exit 1; }

# SD card mount point
sdcard_part1_path="/media/jack/33C3-9EFF"
sdcard_part2_path="/media/jack/7f392429-c9ea-40c1-8d75-70451119a482"
# Files to copy
file1="boot.scr"
file2="BOOT.BIN"
file3="image.ub"

# Copy files to SD card, overwriting existing ones
sudo cp -f "$file1" "$file2" "$file3" "$sdcard_part1_path"/
echo "Files copied to SD card at $sdcard_part1_path"

cd $sdcard_part2_path
sudo rm -rf */
sudo tar -xzvf ~/GitHub/HDMI_pynq_petalinux/$project_name/images/linux/rootfs.tar.gz

cd 
sudo eject sda
sudo chown jack /home/jack/radar_petalinux/images/linux
