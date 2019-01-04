#!/bin/bash
DLBENCH_ROOT=${DLBENCH_ROOT:=$HOME}
echo "Install the dependencies for Caffe. Please refer to http://caffe.berkeleyvision.org/install_apt.html for more details"
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

sudo apt-get install python-dev
sudo apt-get install libopenblas-dev

git clone https://github.com/YanzhaoWu/caffe.git $DLBENCH_ROOT/caffe --recursive
cd $DLBENCH_ROOT/caffe
make -j all
echo "Note: You may modify the Makefile.config to change the compiling options."

