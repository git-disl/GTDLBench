#!/usr/bin/env sh
# This scripts downloads the CIFAR10 (binary version) data and unzips it.

if [ -z "$DLBENCH_ROOT" ]; then
   echo "Please set the environment with source env.sh"
   exit 1
fi

DIR=$DLBENCH_ROOT/data/cifar10
cd "$DIR"

echo "Downloading CIFAR-10 to $DIR ..."

wget --no-check-certificate http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz

echo "Unzipping..."

tar -xf cifar-10-binary.tar.gz && rm -f cifar-10-binary.tar.gz
mv cifar-10-batches-bin/* . && rm -rf cifar-10-batches-bin

# Creation is split out because leveldb sometimes causes segfault
# and needs to be re-created.

