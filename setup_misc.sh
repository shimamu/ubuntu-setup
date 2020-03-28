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
apt_update_only_first_time
sudo apt install -y gimp vifm

# for chrome
cat << EOL
[Next action]
  To install 'Chrome', download .deb file from web manually.
EOL
