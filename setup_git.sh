#!/bin/bash

cat << EOL
--------------------------------------------------
  setup git
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
apt_update_only_first_time
sudo apt install -y git
cat << 'EOL' >> ~/.bashrc

# git
echo 'export EDITOR=vi'
EOL
