#!/bin/bash

cat << EOL
--------------------------------------------------
  setup Marp
--------------------------------------------------
EOL

# Common library
# ==============================================================================
. ./common.sh


# Process
# ==============================================================================
echo "---- install nodejs ----"
sudo apt update
sudo apt install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y


echo "---- install marp ----"
pushd ~
npm install --save-dev @marp-team/marp-cli
popd

echo "---- add config ----"
cat << 'EOL' >> ~/.bashrc

# npm
if [ -d $HOME/node_modules/.bin ]; then
    PATH="$HOME/node_modules/.bin:$PATH"
fi
EOL

