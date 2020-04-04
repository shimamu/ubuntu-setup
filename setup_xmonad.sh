#!/bin/bash

cat << EOL
--------------------------------------------------
  setup xmonad
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
apt_update_only_first_time
sudo apt install -y xmonad xmobar feh compton suckless-tools
git clone https://github.com/shimamu/xmonad-dotfiles.git ${CONF_DIR}/xmonad-dotfiles
pushd ${CONF_DIR}/xmonad-dotfiles
bash setup.sh
popd

