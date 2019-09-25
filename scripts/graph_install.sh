#!/bin/bash

echo "***** Graph Install *****"

echo "[TASK 1] Install GNOME Desktop"
yum -y groups install "GNOME Desktop" >/dev/null 2>&1

echo "[TASK 2] Install XRDP"
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm >/dev/null 2>&1
yum -y install xrdp tigervnc-server >/dev/null 2>&1
systemctl start xrdp
systemctl enable xrdp
