+++
title = "CALTECH256"
weight=9
+++

# CALTECH256

[The CALTECH256 dataset](http://www.vision.caltech.edu/Image_Datasets/Caltech256/)

## Dataset Statistics

1. Color: RGB
2. Sample Size: 


## Camprison with Caltech-101:

![Caltech-256 v.s. Caltech-101](/figures/caltech256vs101.png)

### The Number of Samples per Category for Caltech-256


### Samples


## Dataset Usage


### TensorFlow:

```
Git clone https://github.com/yukunchen113/ResnetCNN.git
   cd RestNetCNN
```
--------------
1. Use caltech256_bin.py to convet caltech256 images to tfrecord files for faster reading.
2. Use caltech256_input.py input functions to convert input iput functions to batch images and labels.
3. Model.py contains resnet model.
4. Train.py trains the model
5. Evals.py evaluates the model.
---------------

### Caffe:
```
 Git clone https://github.com/PramuPerera/DeepOneClass.git
 ```
 Pre-processing
--------------
1. This code is developed targeting pycaffe framework. Please make sure caffe and python 2.7 is installed.
2. Download the code into caffe/examples folder.
3. Download pre-trained models to caffe/models folder.
	For VGG16 visit : http://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_16_layers.caffemodel
	For Alexnet visit : http://dl.caffe.berkeleyvision.org/bvlc_alexnet.caffemodel
4. Download reference dataset to caffe/data. We use ImageNet validation set. It can be found at http://www.image-net.org/challenges/LSVRC/2012/nonpub-downloads
5. Download target datasets to caffe/data. For novelty detection we use Caltech 256 : http://www.vision.caltech.edu/Image_Datasets/Caltech256/
   For abnormal image detection, we use Abnormal 1001 as abnormal images : http://paul.rutgers.edu/~babaks/abnormality_detection.html
   Normal image classes are taken from PASCAL VOC dataset: http://host.robots.ox.ac.uk/pascal/VOC/voc2007/
6. Edit prototext files to reflect correct paths. Specifically, 
   In solverVGG / solverdistance files, change 'net' and 'snapshot_prefix' with correct file paths.
   In VGGjoint2 / joint2 files, change 'source'  parameter in both data and data_c layers.
7. Move distance_layer.py to caffe/python folder.   


Training/ Testing
-----------------


Abnormal image detection
------------------------
Two sub directories 'Abnormal_Object_Dataset' and 'Normal_Object_Dataset'
should exist in caffe/data. Each sub folder (of each class) should ne numbered started from 1.

There exists four modes of operation. To test just first class:

1. Using Alexnet features
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone Alex --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task abnormal --type feature

2. Using VGG16 features
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone VGG --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task abnormal --type feature
3. Using Alexnet DOC (ours)
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone Alex --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task abnormal

4. Using VGG16 DOC (ours)
   $python  examples/OneClass/src/src/run.py --dataset data/ --backbone VGG --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task abnormal

If all 6 classes needs to be tested replace --noneclass 6.



Novelty Detection
----------------- 

Novelty detection dataset should be stored in the  caffe/data/novelty directory. Each subfolder (of each class) should ne numbered started from 1.

There exists four modes of operation. To test just first class:

1. Using Alexnet features
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone Alex --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task novelty --type feature 

2. Using VGG16 features
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone VGG --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task novelty --type feature
3. Using Alexnet DOC (ours)
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone Alex --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task novelty

4. Using VGG16 DOC (ours)
    $python  examples/OneClass/src/src/run.py --dataset data/ --backbone VGG --cafferoot /home/labuser/caffe/ --nclass 6 --noneclass 1 --task novelty

If 40 classes needs to be tested instead of just the first, replace --noneclass 40.


Arguments
----------
1.--name : Name of the network. Used to name the performance curve plot and text output containing match scores.

2.--type : Type of CNN : oneclass / feature. When oneclass is used classification is done using DOC. Otherwise pre-trained deep features are used.

3.--output : Output directory name.

4.--dataset : Specify the path to the training dataset. Eg: data/abnormal/

5.--cafferoot : Specify the path to the caffe installation. Default is : /home/labuser/caffe/

6.--backbone : Specify the backbone: VGG/Alex

7.--nclass : Number of total classes in the dataset. 256 for novelty detection and 6 for abnormal image detection.

8.--noneclass : Number of classes to be considered for one-class testing. We used 40 for novelty detection. 6 for abnormal image detection. 

9.--task : Specify oneclass task novelty/ abnormal

10.--niter : Number of training iterations

11.--visualize : True/ False specifies whether it is required to generate ROC curve plot.


output
------
A text file with one-class score values will be written to the output folder. If '--visualize' option is set to True, a ROC
curve will also be generated.

 
