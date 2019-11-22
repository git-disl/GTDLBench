+++
title = "USPS Dataset"
weight=12
+++

# USPS Dataset

[A database for handwritten text recognition research.](https://ieeexplore.ieee.org/document/291440)

### Download Raw Dataset
[USPS Dataset](https://drive.google.com/file/d/1Me9zUREpeNTm9Woq_AR-_QnfGS2GEVzt/view?usp=sharing)

[USPS Testing Dataset](https://drive.google.com/file/d/13FekMmwQS9eslVmKRG08Kvw5Lx81IK4d/view?usp=sharing)

## Dataset Statistics

1. \# of classes: 10
2. \# of data: 7291 / 2007 (testing)
3. \# of features: 256


### Samples

![USPS Sample](/figures/usps.png)

## Dataset Usage

### TensorFlow:

https://github.com/darshanbagul/USPS_Digit_Classification

#### USPS_Digit_Classification

##### Requirements

```
  tensorflow==1.0.1
  matplotlib==1.5.1
  cv2==2.4.13
  numpy==1.13.0
  cPickle==1.71
```

##### Implementation
    
    1. Logistic Regression

    2. Single layered Neural Networks

    3. Convolutional Neural Networks
    
##### Results

1. Logistic Regression

    Accuracy on USPS data  -  36.30 %
    
2. Single Layer Neural Network

    Accuracy on USPS data  -  49.23 %
    
3. Convolutional Neural Networks

    Accuracy on USPS data  -  63.0 %
    
##### Usage:
    git clone https://github.com/darshanbagul/USPS_Digit_Classification.git
    cd USPS_Digit_Classification
    python main.py

