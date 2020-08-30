#!/bin/bash

mkdir /tmp/nvim_config_push
cd /tmp/nvim_config_push
git clone https://github.com/yud1z/nvim_config.git
cd nvim_config
rm -rf .vim
cp -r ~/.vim .
git add .
git commit -m "update"
git push
rm -rf /tmp/nvim_config_push
