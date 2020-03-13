#!/bin/bash

cat << EOL
--------------------------------------------------
  setup git
--------------------------------------------------
EOL

. ./common.sh

# git
sudo apt update
sudo apt install -y git
