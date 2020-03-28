#!/bin/bash

cat << EOL
--------------------------------------------------
  setup tmux 
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
apt_update_only_first_time
sudo apt install -y tmux
git clone https://github.com/shimamu/tmux-dotfiles.git ${CONF_DIR}/tmux-dotfiles
cd ${CONF_DIR}/tmux-dotfiles
bash setup.sh
