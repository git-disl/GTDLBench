+++
title = "CIFAR-100"
weight=6
+++

# CIFAR-100 dataset

[The CIFAR-100 dataset](https://www.cs.toronto.edu/~kriz/cifar.html)

## Dataset Statistics

1. Color: RGB
2. Sample Size: 32x32

This dataset is just like the CIFAR-10, except it has 100 classes containing 600 images each. There are 500 training images and 100 testing images per class. The 100 classes in the CIFAR-100 are roughly grouped into 20 superclasses. Each image comes with a "fine" label (the class to which it belongs) and a "coarse" label (the superclass to which it belongs).
Here is the list of classes in the CIFAR-100:

|Superclass|	Classes|
|----------|------------|
|aquatic mammals|	beaver, dolphin, otter, seal, whale|
|fish|	aquarium fish, flatfish, ray, shark, trout|
|flowers|	orchids, poppies, roses, sunflowers, tulips|
|food containers|	bottles, bowls, cans, cups, plates|
|fruit and vegetables|	apples, mushrooms, oranges, pears, sweet peppers|
|household electrical devices|	clock, computer keyboard, lamp, telephone, television|
|household furniture|	bed, chair, couch, table, wardrobe|
|insects|	bee, beetle, butterfly, caterpillar, cockroach|
|large carnivores|	bear, leopard, lion, tiger, wolf|
|large man-made outdoor things|	bridge, castle, house, road, skyscraper|
|large natural outdoor scenes|	cloud, forest, mountain, plain, sea|
|large omnivores and herbivores|	camel, cattle, chimpanzee, elephant, kangaroo|
|medium-sized mammals|	fox, porcupine, possum, raccoon, skunk
|non-insect invertebrates |	crab, lobster, snail, spider, worm|
|people|	baby, boy, girl, man, woman|
|reptiles|	crocodile, dinosaur, lizard, snake, turtle|
|small mammals|	hamster, mouse, rabbit, shrew, squirrel|
|trees|	maple, oak, palm, pine, willow|
|vehicles 1|	bicycle, bus, motorcycle, pickup truck, train|
|vehicles 2|	lawn-mower, rocket, streetcar, tank, tractor|

### The Number of Samples per Category for MNIST

|Category| Total| per Category|
|--------|------|-------------|
|#Training Samples|50,000|500|
|#Testing Samples|10,000|1000|

## Caffe:

### Convert the raw data into the LMDB format:

1. Change directory to datasets:
   ````
   cd tutorials/datasets/
   ````
2. Download [CIFAR-100 python version](https://www.cs.toronto.edu/~kriz/cifar-100-python.tar.gz) 
   ````
   wget https://www.cs.toronto.edu/~kriz/cifar-100-python.tar.gz
   ```` 
3. Extract files
   ````
   tar -xf cifar-100-python.tar.gz && rm -f cifar-100-python.tar.gz
   ````
4. Generate LMDB files (Install missing libraries for Python)
   ````
   python convert_cifar100_lmdb.py   
   ````
### Use CIFAR-100 in LMDB format:
Add the following data layer definition into the network *prototxt* file to use this CIFAR-100 dataset.

````
layer {
  name: "cifar100"
  type: "Data"
  top: "data"
  top: "label"
  include {
    phase: TRAIN
  }
  transform_param {
    mean_file: "../mean.binaryproto"
  }
  data_param {
    source: "../cifar100_train_lmdb"
    batch_size: 128
    backend: LMDB
  }
}
layer {
  name: "cifar100"
  type: "Data"
  top: "data"
  top: "label"
  include {
    phase: TEST
  }
  transform_param {
    mean_file: "../mean.binaryproto"
  }
  data_param {
    source: "../cifar100_test_lmdb"
    batch_size: 100
    backend: LMDB
  }
}
````

[Download CIFAR-100 for Caffe](https://drive.google.com/open?id=1bpk1lVTIUWEjeJtcePn4-bbbfRnzIriJ)

## General tools for Python

Modify the input file *cifar10_input.py* described in TensorFlow [@TensorFlow_Convolutional_Neural_Networks] to support the CIFAR-100 dataset.

### Official Python function:
    def unpickle(file):
        import cPickle
        with open(file, 'rb') as fo:
            dict = cPickle.load(fo)
    return dict



[@Github: uncommon-datasets-caffe]: https://github.com/junyuseu/uncommon-datasets-caffe
[@TensorFlow_Convolutional_Neural_Networks]:https://www.tensorflow.org/tutorials/deep_cnn
