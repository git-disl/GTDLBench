+++
title = "CIFAR-10"
weight=5
+++

# CIFAR-10 dataset

[The CIFAR-10 dataset](https://www.cs.toronto.edu/~kriz/cifar.html)

## Dataset Statistics

1. Color: RGB
2. Sample Size: 32x32

The number of categories of CIFAR-10 is 10, that is airplane, automobile, bird, cat, deer, dog, frog, horse, ship, truck.

### The Number of Samples per Category for CIFAR-10

|Category| airplane | automobile | bird |  cat | deer | dog |  frog|  horse|  ship|  truck| Total|
|--------|---|---|---|---|---|---|---|---|---|---|------|
|#Training Samples|5,000|5,000|5,000|5,000|5,000|5,000|5,000|5,000|5,000|50,000|
|#Testing Samples|1,000|1,000|1,000|1,000|1,000|1,000|1,000|1,000|1,000|1,000|10,000|

### Samples

![CIFAR-10 Sample](/figures/cifar10.png)

## Dataset Usage


### TensorFlow:

TensorFlow [@TensorFlow_Convolutional_Neural_Networks]

### Caffe:

    export CAFFE_ROOT='path_to_caffe_root_folder'
    cd $CAFFE_ROOT
    ./data/cifar10/get_cifar10.sh
    ./examples/cifar10/create_cifar10.sh

Caffe [@caffe_Alex's_CIFAR-10_tutorial_Caffe_style]

[Dowload CIFAR-10 for Caffe](https://drive.google.com/open?id=12SrnErXiQCfVyJ6M5gN4pjcIU9ac5yc1)

### Torch:

    th train-on-cifar-10.lua

## General tools for Python

### Official Python function:
    def unpickle(file):
        import cPickle
        with open(file, 'rb') as fo:
            dict = cPickle.load(fo)
    return dict




[@TensorFlow_Convolutional_Neural_Networks]:https://www.tensorflow.org/tutorials/deep_cnn

[@caffe_Alex's_CIFAR-10_tutorial_Caffe_style]:http://caffe.berkeleyvision.org/gathered/examples/cifar10.html