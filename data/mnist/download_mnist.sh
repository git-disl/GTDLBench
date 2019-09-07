#!/usr/bin/env sh
# This scripts downloads the mnist data and unzips it.

DIR=$DLBENCH_ROOT\data\mnist
cd "$DIR"

echo "Downloading MNIST..."

for fname in train-images-idx3-ubyte train-labels-idx1-ubyte t10k-images-idx3-ubyte t10k-labels-idx1-ubyte
do
    if [ ! -e $fname ]; then
        wget --no-check-certificate http://yann.lecun.com/exdb/mnist/${fname}.gz
        gunzip ${fname}.gz
    fi
done
