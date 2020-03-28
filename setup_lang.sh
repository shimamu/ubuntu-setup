#!/bin/bash

cat << EOL
--------------------------------------------------
  setup language
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
apt_update_only_first_time
sudo apt install $(check-language-support)
LANG=C xdg-user-dirs-gtk-update

