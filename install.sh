#!/bin/bash

cd /tmp

git clone https://github.com/tiberiuc/dot-files.git

cd /tmp/dot-files
./install-configs.sh
cd ..
rm -rf ./dot-files
