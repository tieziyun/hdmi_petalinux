FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
KERNEL_FEATURES:append = " bsp.cfg"
SRC_URI += "file://user_2025-12-21-22-23-00.cfg \
            file://user_2025-12-23-10-01-00.cfg \
            "

