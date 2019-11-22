+++
title = "MNIST"
weight=4
+++



# MNIST Dataset

[The MNIST database of handwritten digits](http://yann.lecun.com/exdb/mnist/)

[Download Raw Dataset](https://drive.google.com/file/d/11ZiNnV3YtpZ7d9afHZg0rtDRrmhha-1E/view?usp=sharing)

## Dataset Statistics

1. Color: Grey-scale
2. Sample Size: 28x28

The number of categories of MNIST is 10, that is 0-9, 10 digits.

### The Number of Samples per Category for MNIST

|Category| 0 | 1 | 2 |  3|  4|  5|  6|  7|  8|  9| Total|
|--------|---|---|---|---|---|---|---|---|---|---|------|
|#Training Samples|5,923|6,742|5,958|6,131|5,842|5,421|5,918|6,265|5,851|5,949|60,000|
|#Testing Samples|980|1,135|1,032|1,010|982|892|958|1,028|974|1,009|10,000|

### Samples

![MNIST Sample](/figures/mnist.png)

## Dataset Usage

### MNIST in CSV

The format is:

    label, pix-11, pix-12, pix-13, ...

And the script to generate the CSV file from the original dataset is included in this dataset.

[Download_MNIST_CSV](https://drive.google.com/file/d/1eEKzfmEu6WKdRlohBQiqi3PhW_uIVJVP/view?usp=sharing)

Refer to [MNIST in CSV](https://pjreddie.com/projects/mnist-in-csv/)


### TensorFlow:

TensorFlow provides a simple method for Python to use the MNIST dataset.  [@tensorflow_MNIST_For_ML_Beginners]

    from  tensorflow.examples.tutorials.mnist import input_data
    mnist = input_data.read_data_sets('MNIST_data/', one_hot=True)

### Caffe:

Caffe will download and convert the MNIST dataset to LMDB format throught the scripts. [@caffe_Training_LeNet_on_MNIST_with_Caffe]

    export CAFFE_ROOT='path_to_caffe_root_folder'
    cd $CAFFE_ROOT
    ./data/mnist/get_mnist.sh
    ./examples/mnist/create_mnist.sh

[Download MNIST for Caffe](https://drive.google.com/open?id=1526YI_Nrsr4lMCeea4m1F4eQBVzagMaB)  

### Torch

Torch will download MNIST automatically by executing:

    th train-on-mnist.lua


## General tools for Python:

[python-mnist](https://github.com/sorki/python-mnist)

 [mnist: Python utilities to download and parse the MNIST dataset](https://github.com/datapythonista/mnist)
 
 
 [@tensorflow_MNIST_For_ML_Beginners]: https://www.tensorflow.org/get_started/mnist/beginners
 
 [@caffe_Training_LeNet_on_MNIST_with_Caffe]: http://caffe.berkeleyvision.org/gathered/examples/mnist.html