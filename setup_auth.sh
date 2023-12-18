#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Authentication 
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- # setup for finger print ----"
echo "---- install pkg ----"
sudo add-apt-repository ppa:uunicorn/open-fprintd
sudo apt update
sudo apt install -y open-fprintd fprintd-clients python3-validity

echo "---- add finger print ----"
fprintd-enroll

echo "---- set conf ----"
echo "  check 'Fingerprint authentication'"
sudo pam-auth-update

echo "---- # setup for face ----"
echo "---- install pkg ----"
sudo apt install -y v4l-utils
sudo add-apt-repository ppa:boltgolt/howdy
sudo apt update
sudo apt install -y howdy

echo "---- set conf ----"
echo "  - device_path = /dev/video0"
echo "  - force_mjpeg = true"
sudo howdy config

echo "---- camera test ----"
sudo howdy test

echo "---- add face ----"
sudo howdy add

echo "---- set pam conf ----"
cat << 'EOL' >> /etc/pam.d/sudo

auth sufficient pam_python.so /lib/security/howdy/pam.py
EOL

