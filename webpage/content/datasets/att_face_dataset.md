+++
title = "Faces (AT&T)"
weight=7
+++

# The Database of Faces (AT&T)

[The Database of Faces](http://www.cl.cam.ac.uk/research/dtg/attarchive/facedatabase.html)

## Dataset Statistics

1. Color: Grey-scale
2. Sample Size: 92x112
3. \#Samples: 400
4. Dataset Size: 4.5 MB (compressed in .tar.z)


The original files are in PGM format, and can conveniently be viewed on UNIX (TM) systems using the 'xv' program.
The size of each image is 92x112 pixels, with 256 grey levels per pixel. The images are organised in 40 
directories (one for each subject), which have names of the form sX, where X indicates the subject number 
(between 1 and 40). In each of these directories, there are ten different images of that subject, which
have names of the form Y.pgm, where Y is the image number for that subject (between 1 and 10).



The AT&T face dataset, "(formerly 'The ORL Database of Faces'), contains a set of face images taken 
between April 1992 and April 1994 at the lab. The database was used in the context of a face recognition 
project carried out in collaboration with the Speech, Vision and Robotics Group of the Cambridge University 
Engineering Department."

"There are 10 different images of each of 40 distinct subjects. For some subjects, the images were taken at 
different times, varying the lighting, facial expressions (open / closed eyes, smiling / not smiling) and 
facial details (glasses / no glasses). All the images were taken against a dark homogeneous background with 
the subjects in an upright, frontal position (with tolerance for some side movement). A preview image of the 
Database of Faces is available."

### Full Dataset

![ATT Sample](/figures/faces.gif)


## Dataset Usage

### TensorFlow
[Face Recognition using Deep Learning and TensorFlow Framework](https://github.com/alpha-13/Face-Recognition)

Run the following commands:

    git clone https://github.com/alpha-13/Face-Recognition.git
    cd Face-Recognition
    python Face\ Recognition\ TensorFlow.py


### PyTorch
[Facial Similarity with Siamese Networks in Pytorch](https://github.com/harveyslash/Facial-Similarity-with-Siamese-Networks-in-Pytorch)

Run the following commands to install the dependencies:

    git clone https://github.com/harveyslash/Facial-Similarity-with-Siamese-Networks-in-Pytorch.git
    cd Facial-Similarity-with-Siamese-Networks-in-Pytorch
    pip install -r requirements.txt

Converting pgm files to png: (Need to install imagemagick)

    cd "Root directory of the images"
    find -name "*pgm" | xargs -I {} convert {} {}.png
    
    jupyter nbconvert --execute Siamese-networks-medium.ipynb