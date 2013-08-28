#!/bin/bash

cd /tmp

git clone https://github.com/tiberiuc/dot-files.git

cd /tmp/dot-files
./install-configs.sh
cd /tmp
rm -rf ./dot-files


git clone https://github.com/tiberiuc/vim-config.git
cd /tmp/vim-config
./install.sh
cd /tmp
rm -rf ./vim-config

