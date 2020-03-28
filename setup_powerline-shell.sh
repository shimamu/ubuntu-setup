#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Powerline-shell
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
apt_update_only_first_time
sudo apt install -y python3-pip subversion
pip3 install --user powerline-shell
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

