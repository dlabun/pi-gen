#!/bin/bash -e

install -m 755 files/touch-beep.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 755 files/pigpio.service "${ROOTFS_DIR}/etc/systemd/system/"
mkdir -p /opt/ComfileTech/touch/Beep
install -m 755 files/touch-beep "${ROOTFS_DIR}/opt/ComfileTech/touch/Beep/"
