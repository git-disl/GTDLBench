+++
title = "MNIST"
description = ""
weight = 2
+++


# Benchmarking on MNIST:

The following mentioned model definition files are under the folder: *models/mnist/* .

## Pre-setting:

    DLBENCH_ROOT="path to the root directory of this benchmark"

## TensorFlow:

TensorFlow uses a variant of [LeNet](http://yann.lecun.com/exdb/lenet/) and its network structure is shown as follows:
{{<figure src="/models/tensorflow_default_network.png" title="TensorFlow default model" height="500">}}

Run TensorFlow with its default MNIST setting:

    cd $DLBENCH_ROOT/models/mnist/tensorflow/
    python mnist_deep.py

The *Training Time*, *Testing Time* and *Accuracy* will appear after completion.
    
## Caffe:

Similarly, the NN network structure of Caffe is shown as follows:

![caffe-mnist-model](/models/caffe_lenet.png)

It is also a variant of [LeNet](http://yann.lecun.com/exdb/lenet/).

Run Caffe with its default MNIST setting:

    cd $DLBENCH_ROOT/models/mnist/caffe
    caffe train -solver lenet_solver.prototxt > log.txt 2>&1
    
The *Training Time*, *Testing Time* and *Accuracy* can be extracted from the *log.txt* file.

## Torch:

    cd $DLBENCH_ROOT/models/mnist/torch

Run on CPU:
    
    th train-on-mnist.lua
    
## Theano:

    cd $DLBENCH_ROOT/models/mnist/theano
    THEANO_FLAGS=device=cpu python convolutional_mlp.py