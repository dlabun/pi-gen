#!/bin/bash -e

install -m 755 files/touch-beep.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 755 files/pigpiod.service "${ROOTFS_DIR}/etc/systemd/system/"
mkdir -p ${ROOTFS_DIR}/opt/ComfileTech/touch/Beep
install -m 755 files/touch-beep "${ROOTFS_DIR}/opt/ComfileTech/touch/Beep/"
on_chroot << EOF
systemctl enable pigpiod
systemctl enable touch-beep
EOF
