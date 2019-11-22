# Large-scale CelebFaces Attributes (CelebA) Dataset

[The CelebA dataset](http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html)

CelebFaces Attributes Dataset (CelebA) is a large-scale face attributes dataset with more than 200K celebrity images, each with 40 attribute annotations. The images in this dataset cover large pose variations and background clutter. CelebA has large diversities, large quantities, and rich annotations.
The dataset can be employed as the training and test sets for the following computer vision tasks: face attribute recognition, face detection, and landmark (or facial part) localization.

## Dataset Statistics

- 10,177 number of identities,

- 202,599 number of face images, and

- 5 landmark locations, 40 binary attributes annotations per image




## References ##
- S. Yang, P. Luo, C. C. Loy, and X. Tang, "From Facial Parts Responses to Face Detection: A Deep Learning Approach", in IEEE International Conference on Computer Vision (ICCV), 2015



## Samples

![CELEBA Sample](figures/celeba.PNG)



## Download dataset

http://pan.baidu.com/s/1eSNpdRG

## Note
- The CelebA dataset is available for non-commercial research purposes only.
 - All images of the CelebA dataset are obtained from the Internet which are not property of MMLAB, The Chinese University of Hong Kong. The MMLAB is not responsible for the content nor the meaning of these images.
- You agree not to reproduce, duplicate, copy, sell, trade, resell or exploit for any commercial purposes, any portion of the images and any portion of derived data.
- You agree not to further copy, publish or distribute any portion of the CelebA dataset. Except, for internal use at a single site within the same organization it is allowed to make copies of the dataset.
- The MMLAB reserves the right to terminate your access to the CelebA dataset at any time.
The face identities are released upon request for research purposes only. Please contact us for details.

## Dataset Usage

### Development Environment

- Ubuntu 14.04 LTS
- NVIDIA GTX 1080 ti
- cuda 8.0
- Python 2.7.6
- pytorch 0.1.12
- torchvision 0.1.8
- matplotlib 1.3.1
- imageio 2.2.0
- scipy 0.19.1

### Pytorch GAN implemetation

1 Git clone https://github.com/znxlwm/pytorch-MNIST-CelebA-GAN-DCGAN.git

2. If you want to train using cropped CelebA dataset, you have to change isCrop = False to isCrop = True.

3.pytorch_CelebA_DCGAN.py requires 64 x 64 size image, so you have to resize CelebA dataset (celebA_data_preprocess.py).

pytorch_CelebA_DCGAN.py added learning rate decay code.

### Theano

- Git clone https://github.com/tkarras/progressive_growing_of_gans.git

The repository contains a command-line tool for recreating bit-exact replicas of the HDF5 datasets that we used in the paper. The tool also provides various utilities for operating on HDF5 files:

The repository contains a command-line tool for recreating bit-exact replicas of the HDF5 datasets that we used in the paper. The tool also provides various utilities for operating on HDF5 files:

usage: h5tool.py [-h] <command> ...

    inspect             Print information about HDF5 dataset.
    compare             Compare two HDF5 datasets.
    display             Display images in HDF5 dataset.
    extract             Extract images from HDF5 dataset.
    create_custom       Create HDF5 dataset for custom images.
    create_mnist        Create HDF5 dataset for MNIST.
    create_mnist_rgb    Create HDF5 dataset for MNIST-RGB.
    create_cifar10      Create HDF5 dataset for CIFAR-10.
    create_lsun         Create HDF5 dataset for single LSUN category.
    create_celeba       Create HDF5 dataset for CelebA.
    create_celeba_hq    Create HDF5 dataset for CelebA-HQ.

Type "h5tool.py <command> -h" for more information.
The create_* commands take the original dataset as input and produce the corresponding HDF5 file as output. Additionally, the create_celeba_hq command requires a set of data files representing deltas from the original CelebA dataset. The deltas can be downloaded from Google Drive ( https://drive.google.com/open?id=0B4qLcYyJmiz0TXY1NG02bzZVRGs )(27.6GB)

### TensorFLow

Git clone https://github.com/carpedm20/DCGAN-tensorflow.git

$ python main.py --dataset celebA --input_height=108 --train --crop

To test with an existing model:
```

$ python main.py --dataset celebA --input_height=108 --crop
```

$ mkdir data/DATASET_NAME
... add images to data/DATASET_NAME ...
$ python main.py --dataset celebA --train
$ python main.py --dataset celebA
```