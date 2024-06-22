+++
title = "CIFAR-100"
description = ""
weight = 4
+++

# Benchmarking on CIFAR-100:

The following mentioned model definition files are under the folder: *models/cifar100/* .

## Pre-setting:

    DLBENCH_ROOT="path to the root directory of this benchmark"

## TensorFlow:

Run TensorFlow with its default MNIST setting:

    cd $DLBENCH_ROOT/models/cifar100/tensorflow/
    python cifar100_train.py > train_log.txt 2>&1

After the completion of training, run the following command to test the tranined model:

    python cifar100_eval.py > test_log.txt 2>&1

The *Accuracy* will appear after completion of *cifar100_eval.py*. And the *Training Time* and *Testing Time* 
can be extracted from the *train_log.txt* and *test_log.txt*.
    
## Caffe:

Similarly, the NN network structure of Caffe is shown as follows:

Run Caffe with its default setting:

    cd $DLBENCH_ROOT/models/cifar100/caffe
    ./train_quick.sh > log.txt 2>&1
    
The *Training Time*, *Testing Time* and *Accuracy* can be extracted from the *log.txt* file.

## Torch:

    cd $DLBENCH_ROOT/models/cifar100/torch

Run on CPU:
    
    th train-on-cifar-100.lua
    
## Theano:
*Note*: The implementation for Theano on CIFAR-100 derived from [Reslab Theano tutorial (10 February 2015)](https://github.com/benanne/theano-tutorial)

    cd $DLBENCH_ROOT/models/cifar100/theano
    THEANO_FLAGS=device=cpu python convolutional_mlp.py
