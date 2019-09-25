#!/bin/bash

echo "***** Initial Install *****"

echo "[TASK 1] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.30.0.100 nagios-server
EOF

echo "[TASK 2] Disabling SELinux"
setenforce 0
sed -i --follow-symlinks 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux

echo "[TASK 3] Stopping and Disabling firewalld"
systemctl disable firewalld >/dev/null 2>&1
systemctl stop firewalld

echo "[TASK 4] Installing initial packages"
sudo yum install -y vim wget net-tools unzip telnet ntpdate htop git >/dev/null 2>&1
