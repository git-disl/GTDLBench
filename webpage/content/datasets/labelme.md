# Labelme
[Labelme Train in Spain and test in the rest of the world dataset](http://labelme2.csail.mit.edu/Release3.0/browserTools/php/publications.php)

Try to recognize and segment as many object categories as you can. Training images correspond to outdoor pictures taken in different cities of Spain.


## Dataset Statistics

	Training set: contains more than 1000 fully annotated images and around 2000 partially annotated images. Including partially annotated images allows algorithms to show if they are able to benefit from additional partially labeled images. As we try to build large datasets, it will be common to have many images that are only partially annotated, therefore, developing algorithms and training strategies that can cope with this issue will allow using large datasets without having to make the labor intensive effort of careful image annotation.
Test set: it only contains images that are fully labeled. The test set corresponds to images taken from the rest of the world which guarantees that images will be quite different between training and test.


### Samples

![labelme Sample](figures/labelme.jpg)

## Dataset Usage




### Tensorflow


Download training set from here http://groups.csail.mit.edu/vision/LabelMe/Benchmarks/spain/training.tar.gz
    

	
### TORCH

	Download training set from here http://groups.csail.mit.edu/vision/LabelMe/Benchmarks/spain/training.tar.gz
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
	
	



### CAFFE
Download training set from here http://groups.csail.mit.edu/vision/LabelMe/Benchmarks/spain/training.tar.gz

#### Dependencies

	CUDA. Install CUDA on your PC. I used CUDA 7.5, but it should also work to use new versions.

	Visual Studio. It is flexible to use various version of VS. I used VS2013 in my experiments.

	Third Party. Caffe depends on several third-party libraries, including hdf5, boost, gflag, opencv, glog, to name a few. happynear has provided the compiled libraties at [Caffe-Windows] (https://github.com/happynear/caffe-windows). Download those libraries and place them in the root folder, then add the ./3rdparty/bin folder to your environment variable PATH. Please ensure that these libraries has the same dependency on CUDA to your project.



	git clone https://github.com/jwyang/JULE-Caffe.git
	
	#### Steps to run the code
	Open ./buildVS2013/MainBuilder.sln using Visual Studio. Ideally, you will see 11 projects in one solution. Among them, you will mainly use caffelib and caffe_unsupervised to reproduce the results in our paper. However, the projects might crash because of different version of CUDA you are using. In this case, change the CUDA version in vcxproj file of each project.
	





### Reference:

1.LabelMe: a database and web-based tool for image annotation . B. Russell, A. Torralba, K. Murphy, W. T. Freeman. International Journal of Computer Vision, 2007.

