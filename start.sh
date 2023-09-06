#!/bin/bash

sudo apt -y install exuberant-ctags silversearcher-ag git

cd /tmp
wget https://github.com/neovim/neovim/releases/download/v0.9.1/nvim.appimage
chmod -R 777 nvim.appimage 
./nvim.appimage --appimage-extract
mv squashfs-root nvim_bin
sudo mv nvim_bin /
sudo chmod -R 777 /nvim_bin
sudo ln -s /nvim_bin/AppRun /usr/bin/nvim
echo "done with installing nvim"

echo "starting to adding my configuration"
rm -rf ~/.vim
cd /tmp
git clone https://github.com/yud1z/nvim_config.git
cd nvim_config
mv .vim ~/
ln -s ~/.vim ~/.config/nvim
mkdir ~/vimtmp
echo "done for all"
