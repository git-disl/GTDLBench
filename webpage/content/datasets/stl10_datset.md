# STL10

[The STL-10 dataset](https://cs.stanford.edu/~acoates/stl10/)

The STL-10 dataset is an image recognition dataset for developing unsupervised feature learning, deep learning, self-taught learning algorithms. It is inspired by the CIFAR-10 dataset but with some modifications. In particular, each class has fewer labeled training examples than in CIFAR-10, but a very large set of unlabeled examples is provided to learn image models prior to supervised training.

## Dataset Statistics

	10 classes: airplane, bird, car, cat, deer, dog, horse, monkey, ship, truck.
	Images are 96x96 pixels, color.
	500 training images (10 pre-defined folds), 800 test images per class.
	100000 unlabeled images for unsupervised learning. These examples are extracted from a similar but broader distribution of images. For instance, it contains other types of animals (bears, rabbits, etc.) and vehicles (trains, buses, etc.) in addition to the ones in the labeled set.
	Images were acquired from labeled examples on ImageNet.





### Samples

![STL10 Sample](figures/stl10.png)

## Dataset Usage

There are three files: train.mat, test.mat and unlabeled.mat. These files contain variables:
X, y: The matrix "X" contains the images for the file as a matrix with 1 example per row. In each row, the pixels are laid out in column-major order, one channel at a time. That is, the first 96*96 values are the red channel, the next 96*96 are green, and the last are blue. To convert these to a matrix of RGB images, use: reshape(X,10000,96,96,3). The vector "y" contains the labels in the range 1 to 10.
class_names: Contains the text name of each class.
fold_indices: In train.mat only. Contains the pre-selected indices of the examples to be used for the 10 training trials. For the i'th fold, use: X(fold_indices{i}, :) and y(fold_indices{i}) as your training set.

The binary files are split into data and label files with suffixes: train_X.bin, train_y.bin, test_X.bin and test_y.bin. Within each, the values are stored as tightly packed arrays of uint8's. The images are stored in column-major order, one channel at a time. That is, the first 96*96 values are the red channel, the next 96*96 are green, and the last are blue. The labels are in the range 1 to 10. The unlabeled dataset, unlabeled.bin, is in the same format, but there is no "_y.bin" file.
A class_names.txt file is included for reference, with one class name per line.
The file fold_indices.txt contains the (zero-based) indices of the examples to be used for each training fold. The first line contains the indices for the first fold, the second line, the second fold, and so on.


### Theano

#### [ini_caltech101](https://github.com/mttk/STL10.git): 

##### Getting the Code

To get a local copy of the code, clone it using git:

    git clone https://github.com/mttk/STL10.git
    
	
	stl10_input.py contains all the necessary methods for downloading and reading data along with a test main funct for displaying an image.

Make sure you have the bleeding edge version of Theano, or run

    pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git



### Keras

To get a local copy of the code, clone it using git:

    git clone https://github.com/mttk/STL10.git
    
	
	stl10_input.py contains all the necessary methods for downloading and reading data along with a test main funct for displaying an image.
	
	To classify images using keras:git clone  https://github.com/rajatvikramsingh/stl10-vgg16.git
	Run vgg_transfer.py to run classify images of stl10 using keras







### Reference:

1.Adam Coates, Honglak Lee, Andrew Y. Ng An Analysis of Single Layer Networks in Unsupervised Feature Learning AISTATS, 2011.



