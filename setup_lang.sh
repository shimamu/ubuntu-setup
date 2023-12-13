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
echo "---- install pkg ----"
sudo apt install -y $(check-language-support)
LANG=C xdg-user-dirs-gtk-update

