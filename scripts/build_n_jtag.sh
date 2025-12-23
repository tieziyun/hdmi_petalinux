source ../../petalinux/settings.sh

cd ../zynq_petalinux

petalinux-build
petalinux-package boot --fsbl --u-boot --fpga --force
petalinux-boot --jtag --u-boot --kernel --rootfs