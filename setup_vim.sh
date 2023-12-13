#!/bin/bash

cat << EOL
--------------------------------------------------
  setup vim
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- install pkg ----"
sudo apt install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "---- install conf ----"
git clone https://github.com/shimamu/vim-dotfiles.git ${CONF_DIR}/vim-dotfiles
pushd ${CONF_DIR}/vim-dotfiles
bash setup.sh
popd
git clone https://github.com/shimamu/vim-colors.git ${CONF_DIR}/vim-colors
pushd ${CONF_DIR}/vim-colors
bash setup.sh
popd

