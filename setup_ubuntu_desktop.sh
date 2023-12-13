#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Ubuntu Desktop
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- change theme ----"
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-prussiangreen'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-prussiangreen'

echo "---- set dash icon size ----"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
