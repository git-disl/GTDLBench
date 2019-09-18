#!/usr/bin/env sh
# This script converts the cifar data into leveldb format.
set -e

EXAMPLE=.
DATA=..
DBTYPE=lmdb
BUILD=$DLBENCH_ROOT/caffe/build

echo "Creating $DBTYPE..."

rm -rf $EXAMPLE/cifar10_train_$DBTYPE $EXAMPLE/cifar10_test_$DBTYPE

if ! [ -f "$BUILD/examples/cifar10/convert_cifar_data.bin" ]; then
    echo "Please install caffe under GTDLBench or update the environment."
    exit 1
fi

$BUILD/examples/cifar10/convert_cifar_data.bin $DATA $EXAMPLE $DBTYPE

echo "Computing image mean..."

if ! [ -f "$BUILD/tools/compute_image_mean" ]; then
    echo "Please install caffe under GTDLBench or update the environment."
    exit 1
fi

$BUILD/tools/compute_image_mean -backend=$DBTYPE \
  $EXAMPLE/cifar10_train_$DBTYPE $EXAMPLE/mean.binaryproto

echo "Done."
