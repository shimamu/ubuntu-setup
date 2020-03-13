#!/bin/bash

cat << EOL
--------------------------------------------------
  setup vim
--------------------------------------------------
EOL

. ./common.sh

#vim
sudo apt update
sudo apt install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/shimamu/vim-dotfiles.git ${CONF_DIR}/vim-dotfiles
cd ${CONF_DIR}/vim-dotfiles
bash setup.sh
mkdir ~/.vim/tmp
touch ~/.vim/abbreviate.vim
git clone https://github.com/shimamu/vim-colors.git ${CONF_DIR}/vim-colors
cp -r ${CONF_DIR}/vim-colors/colors ~/.vim
