FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
KERNEL_FEATURES:append = " bsp.cfg"
SRC_URI += "file://user_2025-12-21-22-23-00.cfg \
            file://user_2025-12-23-10-01-00.cfg \
            file://user_2025-12-25-18-13-00.cfg \
            file://user_2025-12-26-00-24-00.cfg \
            file://user_2025-12-26-01-23-00.cfg \
            file://user_2025-12-26-11-41-00.cfg \
            file://user_2025-12-26-13-04-00.cfg \
            file://user_2025-12-27-13-42-00.cfg \
            file://user_2025-12-27-13-59-00.cfg \
            "

