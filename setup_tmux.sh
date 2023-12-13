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
echo "---- install pkg ----"
sudo apt install -y tmux

echo "---- install conf ----"
git clone https://github.com/shimamu/tmux-dotfiles.git ${CONF_DIR}/tmux-dotfiles
pushd ${CONF_DIR}/tmux-dotfiles
bash setup.sh
popd
