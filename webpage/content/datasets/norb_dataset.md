# NORB DATASET

[The Norb dataset](https://cs.nyu.edu/~ylclab/data/norb-v1.0/)

This database is intended for experiments in 3D object reocgnition from shape. It contains images of 50 toys belonging to 5 generic categories: four-legged animals, human figures, airplanes, trucks, and cars. The objects were imaged by two cameras under 6 lighting conditions, 9 elevations (30 to 70 degrees every 5 degrees), and 18 azimuths (0 to 340 every 20 degrees)

## Dataset Statistics

	The training set is composed of 5 instances of each category (instances 4, 6, 7, 8 and 9), and the test set of the remaining 5 instances (instances 0, 1, 2, 3, and 5).





### Samples

![NORB Sample](figures/norb.jpg)

## Dataset Usage

The "-dat" files store the image sequences. The "-cat" files store the corresponding category of the images. Each "-dat" file stores 29,160 image pairs (6 categories, 5 instances, 6 lightings, 9 elevations, and 18 azimuths). The 6-th category is for images without objects, which can be used to train a system to reject images as none of the 5 object categories. Each corresponding "-cat" file contains 29,160 category labels (0 for animal, 1 for human, 2 for plane, 3 for truck, 4 for car, 5 for blank).

Each "-info" file stores 29,160 10-dimensional vectors, which contain additional information about the corresponding images. The first 4 elements in the vector are:
- 1. the instance in the category (0 to 9)
- 2. the elevation (0 to 8, which mean cameras are 30, 35,40,45,50,55,60,65,70 degrees from the horizontal respectively)
- 3. the azimuth (0,2,4,...,34, multiply by 10 to get the azimuth in degrees)
- 4. the lighting condition (0 to 5)
and the next 6 elements describe the peturbations added to the object when superposed onto a cluttered background. (see next section)

For regular training and testing, "-dat" and "-cat" files are sufficient. "-info" files are provided in case some other forms of classification or preprocessing are needed.


### Tensorflow
#### [NORB](https://github.com/shashanktyagi/DC-GAN-on-NORB-dataset.git): 

##### Getting the Code

To get a local copy of the code, clone it using git:

    git clone https://github.com/shashanktyagi/DC-GAN-on-NORB-dataset.git
    
	
	run dcgan_main.py




### Keras

To get a local copy of the code, clone it using git:

    git clone https://github.com/ndrplz/small_norb.git
    
	
	Plug-and-play python wrapper around the small NORB dataset.
### Torch
Use the following code to load and run norb in torch
https://github.com/rosejn/torch-datasets/blob/master/dataset/smallnorb.lua



### Reference:

1.https://cs.nyu.edu/~ylclab/data/norb-v1.0/


