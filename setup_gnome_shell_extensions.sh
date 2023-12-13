#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Gnome Shell Extensions
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- install pkg ----"
sudo apt-get install -y gnome-tweaks gnome-shell-extensions

# Set extensions from browser
#   - Forge
