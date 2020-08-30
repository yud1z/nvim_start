#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "must root"
    exit
fi

rm -rf ~/.vim
cd /tmp
rm -rf /tmp/nvim_config
git clone https://github.com/yud1z/nvim_config.git
cd nvim_config
mv .vim ~/
ln -s ~/.vim ~/.config/nvim
