#!/bin/bash

cd ~
mkdir -p ~/download
mkdir -p ~/local/node
cd ~/download
wget http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz
tar zxvf node-v0.12.2.tar.gz
cd node-v0.12.2
./configure --prefix=$HOME/local/node
make
make install


# add node and node modules to the path

#nano ~/.bash_profile

#add:

#NODE_PATH=/home/nodejs/local/node/lib/node_modules

#export NODE_PATH

# append to the PATH

#PATH=$HOME/local/node/bin:$HOME/bin
