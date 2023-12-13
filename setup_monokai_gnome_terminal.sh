#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Monokai Colorscheme for Gnome Terminal
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- install pkg ----"
sudo apt-get install -y dconf-cli

echo "---- download theme ----"
git clone https://github.com/0xComposure/monokai-gnome-terminal ${BUILD_DIR}/monokai-gnome-terminal

echo "---- install theme ----"
pushd ${BUILD_DIR}/monokai-gnome-terminal
./install.sh
popd
