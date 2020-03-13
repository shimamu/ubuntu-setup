#!/bin/bash

cat << EOL
--------------------------------------------------
  setup tmux 
--------------------------------------------------
EOL

. ./common.sh

# tmux
sudo apt update
sudo apt install -y tmux
git clone https://github.com/shimamu/tmux-dotfiles.git ${CONF_DIR}/tmux-dotfiles
cd ${CONF_DIR}/tmux-dotfiles
bash setup.sh
