#!/usr/bin/env bash
# This script provides some utilities to set up a new working environment

# Install powerline fonts completely
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Install starship and fish
curl -fsSL https://starship.rs/install.sh | bash

# Install pfetch
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
sudo install pfetch-master/pfetch /usr/local/bin/
ls -l /usr/local/bin/pfetch
rm -rf master.zip pfetch-master/
