#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "must root"
    exit
fi

cd /tmp
wget https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
chmod -R 777 nvim.appimage
cp nvim.appimage /usr/bin/nvim.appimage
ln -s /usr/bin/nvim.appimage /usr/bin/nvim
rm -rf /tmp/nvim.appimage
echo "done with installing nvim"

echo "starting to adding my configuration"
rm -rf ~/.vim
cd /tmp
git clone https://github.com/yud1z/nvim_config.git
cd nvim_config
mv .vim ~/
ln -s ~/.vim ~/.config/nvim
mkdir ~/vimtmp
apt -y install exuberant-ctags silversearcher-ag
echo "done for all"
