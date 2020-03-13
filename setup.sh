#!/bin/bash

# prepare
CONF_DIR=~/conf
mkdir -p $CONF_DIR

# apt
sudo apt update
sudo apt upgrade -y
sudo apt install '$(check-language-support)'

# git
sudo apt install -y git

#vim
sudo apt install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/shimamu/vim-dotfiles.git ${CONF_DIR}/vim-dotfiles
cd ${CONF_DIR}/vim-dotfiles
bash setup.sh
mkdir ~/.vim/tmp
touch ~/.vim/abbreviate.vim
git clone https://github.com/shimamu/vim-colors.git ${CONF_DIR}/vim-colors
cp -r ${CONF_DIR}/vim-colors/colors ~/.vim

# tmux
sudo apt install -y tmux
git clone https://github.com/shimamu/tmux-dotfiles.git ${CONF_DIR}/tmux-dotfiles
cd ${CONF_DIR}/tmux-dotfiles
bash setup.sh

# Powerline-shell
sudo apt install -y python-pip subversion
pip install --user powerline-shell
svn export https://github.com/ryanoasis/nerd-fonts/trunk/patched-fonts/UbuntuMono ~/.fonts/UbuntuMono
cat << 'EOL' >> ~/.bashrc

# Powerline-shell
function _update_ps1() {
    PS1=$(~/.local/bin/powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
EOL

