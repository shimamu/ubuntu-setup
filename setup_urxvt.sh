#!/bin/bash

cat << EOL
--------------------------------------------------
  setup urxvt
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
apt_update_only_first_time
sudo apt install -y rxvt-unicode-256color fonts-ipafont
svn export https://github.com/ryanoasis/nerd-fonts/trunk/patched-fonts/Hack ~/.fonts/Hack
git clone https://github.com/shimamu/x-dotfiles.git ${CONF_DIR}/x-dotfiles
pushd ${CONF_DIR}/x-dotfiles
bash setup.sh
popd
