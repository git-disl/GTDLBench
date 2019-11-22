# Columbia Object Image Library (COIL-100)

[The COIL-100 dataset](https://cs.nyu.edu/~ylclab/data/norb-v1.0/)

This is a database of gray-scale images of 100 objects.  The objects were placed on a motorized turntable against a black background. The turntable was rotated through 360 degrees to vary object pose with respect to a fixed color camera. Images of the objects were taken at pose intervals of 5 degrees. This corresponds to 72 poses per object. The images were size normalized. The database, called Columbia Object Image Library (COIL-100), was used in a real-time 100 object recognition system 


## Dataset Statistics

	 Database of 7,200 color images of 100 objects (72 images per object).
	 The objects have a wide variety of complex geometric and reflectance characteristics.

### Samples

![COIL-100 Sample](figures/coil100.jpg)

## Dataset Usage






##### Getting the Code

To get a local copy of the code, clone it using git:

    git clone https://github.com/emersonloureiro/tensorflow-examples.git
    
	cd into coil-100
	
	mkdir images/inception-images - this is where the pre-processed images for re-training will be kept
    ./preprocess.sh - this will pre-process all images under images/training, to a format that the tensorflow inception model accepts
   ./train.sh PATH_TO_INCEPTION_V3_MODEL - you'll need to download the Inception V3 model and use the path you saved in place of PATH_TO_INCEPTION_V3_MODEL. You can tune the training parameters (e.g., max iterations) by modifying the train.sh script
	After training, run ./eval to see the level of accuracy you achieved
	
	
### TORCH

	git clone https://github.com/jwyang/JULE.torch.git
	```
	$ curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
	$ git clone https://github.com/torch/distro.git ~/torch --recursive
	$ cd ~/torch; 
	$ ./install.sh      # and enter "yes" at the end to modify your bashrc
	$ source ~/.bashrc
	```
	After installing torch, you may also need install some packages using LuaRocks:
	```
	$ luarocks install nn
	$ luarocks install image
	```
	It is preferred to run the code on GPU. Thus you need to install cunn:
	```
	$ luarocks install cunn
	```
	
	lua-knn. It is used to compute the distance between neighbor samples. Go into the folder, and then compile it with:
	```	
	$ luarocks make
	```
	
	#### Train Model
	
	```
	$ th train.lua -dataset COIL-100 -eta 0.9
	```
	Note that it runs on fast mode by default. You can change it to regular mode by setting "-use_fast 0". In the above command, eta is the unfolding rate. For face dataset, we recommand 0.2, while for other datasets, it is set to 0.9 to save training time. During training, you will see the normalize mutual information (NMI) for the clustering results.

	You can train multiple models in parallel by:
	```$ th train.lua -dataset COIL-100 -eta 0.9 -num_nets 5
	```
	
	You can also get the clustering performance when using raw image data and random CNN by

	```$ th train.lua -dataset COIL-100 -eta 0.9 -updateCNN 0
	```
	You can also change other hyper parameters for model training, such as K_s, K_c, number of epochs in each partial unrolled period, etc.
	




### CAFFE

#### Dependencies

	CUDA. Install CUDA on your PC. I used CUDA 7.5, but it should also work to use new versions.

	Visual Studio. It is flexible to use various version of VS. I used VS2013 in my experiments.

	Third Party. Caffe depends on several third-party libraries, including hdf5, boost, gflag, opencv, glog, to name a few. happynear has provided the compiled libraties at [Caffe-Windows] (https://github.com/happynear/caffe-windows). Download those libraries and place them in the root folder, then add the ./3rdparty/bin folder to your environment variable PATH. Please ensure that these libraries has the same dependency on CUDA to your project.



	git clone https://github.com/jwyang/JULE-Caffe.git
	
	#### Steps to run the code
	Open ./buildVS2013/MainBuilder.sln using Visual Studio. Ideally, you will see 11 projects in one solution. Among them, you will mainly use caffelib and caffe_unsupervised to reproduce the results in our paper. However, the projects might crash because of different version of CUDA you are using. In this case, change the CUDA version in vcxproj file of each project.
	





### Reference:

1."Columbia Object Image Library (COIL-100)," S. A. Nene, S. K. Nayar and H. Murase, Technical Report CUCS-006-96, February 1996.
