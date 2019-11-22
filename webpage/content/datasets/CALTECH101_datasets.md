+++
title = "CALTECH101"
weight=8
+++

# CALTECH101

[The CALTECH101 dataset](http://www.vision.caltech.edu/Image_Datasets/Caltech101/)

Caltech-101 contains a total of 9,146 images, split between 101 distinct object categories (faces, watches, ants, pianos, etc.)
and a background category.
This dataset contains 102 folders, the BACKGROUND_Google (the background category) 
can be removed, and users may use the left 101 categoies.

## Dataset Statistics

1. Color: RGB
2. Sample size: Roughtly 300x200
3. Dataset size: 1.2 GB

Overall, the dataset consists of pictures of objects belonging to 101 categories.
About 40 to 800 images per category. Most categories have about 50 images. The
size of each image is roughly 300x200 pixels. Almost all images are annotated with the
following information: a bounding box of the object, and a carefully traced 
silhouette of the objects by a human subject.



### The Number of Samples per Category for Caltech 101

TODO


### Samples

![CALTECH101 Sample](/figures/caltech101.png)

## Dataset Usage


### Theano

#### [ini_caltech101](https://github.com/marcuniq/ini_caltech101): 

##### Getting the Code

To get a local copy of the code, clone it using git:

    git clone https://github.com/marcuniq/ini_caltech101.git
    cd ini_caltech101

Make sure you have the bleeding edge version of Theano, or run

    pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

Next, install the package. Use 'develop' instead of 'install' if you consider changing package code

    python setup.py develop
    
Run train.sh (sets proper theano env flags), which downloads and untars the 'img-gen-resized' dataset, then starts training.

    ./train.sh


### Keras

#### [deeplearn-caltech101](https://github.com/charan96/deeplearn-caltech101): Build on top of VGG19

The dataset is already contained in this project.

    pip install -r requirements.txt

    python2.7 caltech_convnet.py

### Deeplearning4j

#### [Caltech101Classifier](https://github.com/happylittlebunny/Caltech101Classifier): VGG16 pretrained model.

##### How to run the project: 

* IntelliJ IDE:<br />
This is a maven project. It's developed in IntelliJ. The project can be loaded and run in IntelliJ.
When run in IntelliJ, under "Run"->"Edit Configurations", update following:
  * VM options: -Xms8g -Xmx8g
  * Program arguments: <data path ie: C:\\Users\\Yuyi\\Desktop\\bigdata2017Fall\\skymind\\data\\train>

* Command line:<br />
The Caltech101Classifier-1.0-SNAPSHOT-jar-with-dependencies.jar is under target folder.<br />
Run Caltech101Classifier-1.0-SNAPSHOT-jar-with-dependencies.jar:<br />
Go to the jar directory and run:
```
java -jar -Xms8g -Xmx8g Caltech101Classifier-1.0-SNAPSHOT-jar-with-dependencies.jar <data path>
```


### Reference:

1. Images only:
L. Fei-Fei, R. Fergus and P. Perona. Learning generative visual models
from few training examples: an incremental Bayesian approach tested on
101 object categories. IEEE. CVPR 2004, Workshop on Generative-Model
Based Vision. 2004

2. Images and annotations:
L. Fei-Fei, R. Fergus and P. Perona. One-Shot learning of object
categories. IEEE Trans. Pattern Recognition and Machine Intelligence. In
press.


### Specific Categories:

1. trilobite
2. face
3. pagoda
4. tick
5. inlineskate
6. metronome
7. accordion
8. yinyang
9. soccerball
10. spotted cat
11. nautilus
12. grand-piano
13. crayfish
14. headphone
15. hawksbill
16. ferry
17. cougar-face
18. bass
19. ketch
20. lobster
21. pyramid
22. rooster
23. laptop
24. waterlilly
25. wrench
26. strawberry
27. starfish
28. ceilingfan
29. seahorse
30. stapler
31. stop-sign
32. zebra
33. brontosaurus
34. emu
35. snoopy
36. okapi
37. schooner
38. binocular
39. motorbike
40. hedgehog
41. garfield
42. airplane
43. umbrella
44. panda
45. crocodile-head
46. llama
47. windsor-chair
48. car-side
49. pizza
50. minaret
51. dollarbill
52. gerenuk
53. sunflower
54. rhino
55. cougar-body
56. crab
57. ibis
58. helicopter
59. dalmatian
60. scorpion
61. revolver
62. beaver
63. saxophone
64. kangaroo
65. euphonium
66. flamingo
67. flamingo-head
68. elephant
69. cellphone
70. gramophone
71. bonsai
72. lotus
73. cannon
74. wheel-chair
75. dolphin
76. stegosaurus
77. brain
78. menorah
79. chandelier
80. camera
81. ant
82. scissors
83. butterfly
84. wildcat
85. crocodile
86. barrel
87. joshua-tree
88. pigeon
89. watch
90. dragonfly
91. mayfly
92. cup
93. ewer
94. octopus
95. platypus
96. buddha
97. chair
98. anchor
99. mandolin
100. electric-g
