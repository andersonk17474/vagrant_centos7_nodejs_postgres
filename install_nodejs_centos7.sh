#!/bin/bash

cd ~
mkdir -p ~/download
mkdir -p ~/local/node
cd ~/download
wget -q http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz
tar zxvf node-v0.12.2.tar.gz
cd node-v0.12.2
./configure --prefix=$HOME/local/node
make -j
make install


