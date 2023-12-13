#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Tela Circle Icon Theme
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- install pkg ----"
sudo apt-get install -y dconf-cli gnome-tweaks

echo "---- download theme ----"
git clone https://github.com/vinceliuice/Tela-circle-icon-theme ${BUILD_DIR}/Tela-circle-icon-theme

echo "---- install theme ----"
pushd ${BUILD_DIR}/Tela-circle-icon-theme
./install.sh -d ~/.icons manjaro
gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-manjaro'
popd
