#!/bin/bash

cat << EOL
--------------------------------------------------
  setup miscellaneous software
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- install pkg ----"
sudo apt install -y gimp vifm mcomix vlc rar unrar

# for chrome
cat << EOL
[Next action]
  To install 'Chrome', download .deb file from web manually.
EOL
