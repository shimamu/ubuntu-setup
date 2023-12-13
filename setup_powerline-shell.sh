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
echo "---- install pkg ----"
sudo apt install -y powerline fonts-powerline

echo "---- install fonts ----"
git clone https://github.com/powerline/fonts.git --depth=1
pushd fonts
./install.sh
popd
rm -rf fonts

echo "---- add config ----"
cat << 'EOL' >> ~/.bashrc

# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi
EOL

