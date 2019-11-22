# VISUAL QA

[The VQA dataset](http://www.visualqa.org/)

VQA is a new dataset containing open-ended questions about images. These questions require an understanding of vision, language and commonsense knowledge to answer.

## Dataset Statistics

265,016 images (COCO and abstract scenes)
1,105,904 questions
11,059,040 ground truth answers

At least 3 questions (5.4 questions on average) per image
10 ground truth answers per question
3 plausible (but likely incorrect) answers per question
Automatic evaluation metric


## References ##
- [VQA: Visual Question Answering](http://visualqa.org/)



### Samples

![VQA Sample](figures/vqa.PNG)

## Dataset Usage

### Download dataset

http://www.visualqa.org/download.html


### Requirements

python 2.7
scikit-image (visit this page for installation)
matplotlib (visit this page for installation)


### Files ###
./Questions
- For v2.0, download the question files from the [VQA download page](http://www.visualqa.org/download.html), extract them and place in this folder.
- For v1.0, both real and abstract, question files can be found on the [VQA v1 download page](http://www.visualqa.org/vqa_v1_download.html).
- Question files from Beta v0.9 release (123,287 MSCOCO train and val images, 369,861 questions, 3,698,610 answers) can be found below
	- [training question files](http://visualqa.org/data/mscoco/prev_rel/Beta_v0.9/Questions_Train_mscoco.zip)
	- [validation question files](http://visualqa.org/data/mscoco/prev_rel/Beta_v0.9/Questions_Val_mscoco.zip)
- Question files from Beta v0.1 release (10k MSCOCO images, 30k questions, 300k answers) can be found [here](http://visualqa.org/data/mscoco/prev_rel/Beta_v0.1/Questions_Train_mscoco.zip).

./Annotations
- For v2.0, download the annotations files from the [VQA download page](http://www.visualqa.org/download.html), extract them and place in this folder.
- For v1.0, for both real and abstract, annotation files can be found on the [VQA v1 download page](http://www.visualqa.org/vqa_v1_download.html).
- Annotation files from Beta v0.9 release (123,287 MSCOCO train and val images, 369,861 questions, 3,698,610 answers) can be found below
	- [training annotation files](http://visualqa.org/data/mscoco/prev_rel/Beta_v0.9/Annotations_Train_mscoco.zip)
	- [validation annotation files](http://visualqa.org/data/mscoco/prev_rel/Beta_v0.9/Annotations_Val_mscoco.zip)
- Annotation files from Beta v0.1 release (10k MSCOCO images, 30k questions, 300k answers) can be found [here](http://visualqa.org/data/mscoco/prev_rel/Beta_v0.1/Annotations_Train_mscoco.zip).

./Images
- For real, create a directory with name mscoco inside this directory. For each of train, val and test, create directories with names train2014, val2014 and test2015 respectively inside mscoco directory, download respective images from [MS COCO website](http://mscoco.org/dataset/#download) and place them in respective folders.
- For abstract, create a directory with name abstract_v002 inside this directory. For each of train, val and test, create directories with names train2015, val2015 and test2015 respectively inside abstract_v002 directory, download respective images from [VQA download page](http://www.visualqa.org/download.html) and place them in respective folders.

./PythonHelperTools
- This directory contains the Python API to read and visualize the VQA dataset
- vqaDemo.py (demo script)
- vqaTools (API to read and visualize data)

./PythonEvaluationTools
- This directory contains the Python evaluation code
- vqaEvalDemo.py (evaluation demo script)
- vqaEvaluation (evaluation code)

./Results
- OpenEnded_mscoco_train2014_fake_results.json (an example of a fake results file for v1.0 to run the demo)
- Visit [VQA evaluation page] (http://visualqa.org/evaluation) for more details.

./QuestionTypes
- This directory contains the following lists of question types for both real and abstract questions (question types are unchanged from v1.0 to v2.0). In a list, if there are question types of length n+k and length n with the same first n words, then the question type of length n does not include questions that belong to the question type of length n+k.
- mscoco_question_types.txt
- abstract_v002_question_types.txt





