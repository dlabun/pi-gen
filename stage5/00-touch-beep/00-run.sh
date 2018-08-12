#!/bin/bash -e

install -m 644 files/touch-beep.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/touch-beep "${ROOTFS_DIR}/opt/ComfileTech/touch/Beep"
