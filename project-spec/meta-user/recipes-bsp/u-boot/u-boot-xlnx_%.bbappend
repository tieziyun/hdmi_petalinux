FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://platform-top.h file://bsp.cfg"
SRC_URI += "file://user_2025-12-22-17-00-00.cfg \
            file://user_2025-12-26-00-04-00.cfg \
            file://user_2025-12-26-14-28-00.cfg \
            file://user_2025-12-26-14-42-00.cfg \
            "

