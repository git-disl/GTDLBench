# AudioSet

[The AudioSet dataset](https://research.google.com/audioset/dataset/index.html)

The AudioSet dataset is a large-scale collection of human-labeled 10-second sound clips drawn from YouTube videos. 
There are 2,084,320 YouTube videos containing 527 labels.

## Dataset Statistics

![AudioSet Sample](figures/audioset.PNG)



### Reference paper

https://research.google.com/pubs/pub45857.html


### Samples

![AudioSet Sample](figures/audiosetsample.PNG)

## Dataset Usage


### Info about Dataset

 AudioSet dataset for download in two formats:

Text (csv) files describing, for each segment, the YouTube video ID, start time, end time, and one or more labels.

128-dimensional audio features extracted at 1Hz. The audio features were extracted using a VGG-inspired acoustic model described in Hershey et. al., trained on a preliminary version of YouTube-8M. The features were PCA-ed and quantized to be compatible with the audio features provided with YouTube-8M. They are stored as TensorFlow Record files. 

The labels are taken from the AudioSet ontology which can be downloaded from our AudioSet GitHub repository ( https://github.com/audioset/ontology).

The dataset is made available by Google Inc. under a Creative Commons Attribution 4.0 International (CC BY 4.0) license, while the ontology is available under a Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license.


### Dataset split
The dataset is divided in three disjoint sets: a balanced evaluation set, a balanced training set, and an unbalanced training set. In the balanced evaluation and training sets,  each class has the same number of examples. The unbalanced training set contains the remainder of annotated segments.

http://storage.googleapis.com/us_audioset/youtube_corpus/v1/csv/eval_segments.csv contains 20,383 segments from distinct videos, providing at least 59 examples for each of the 527 sound classes that are used. Because of label co-occurrence, many classes have more examples.

http://storage.googleapis.com/us_audioset/youtube_corpus/v1/csv/balanced_train_segments.csv contains 22,176 segments from distinct videos chosen with the same criteria: providing at least 59 examples per class with the fewest number of total segments.

http://storage.googleapis.com/us_audioset/youtube_corpus/v1/csv/unbalanced_train_segments.csv contains 2,042,985 segments from distinct videos, representing the remainder of the dataset.

Each csv file has a three-line header with each line starting with “#”, and with the first two lines indicating the creation time and general statistics. Each subsequent line has columns defined by the third header line

The total size of the features is 2.4 gigabytes. They are stored in 12,228 TensorFlow record files, sharded by the first two characters of the YouTube video ID, and packaged as a tar.gz file.

The labels are stored as integer indices. They are mapped to sound classes via class_labels_indices.csv. The first line defines the column names

The labels are stored as integer indices. They are mapped to sound classes via class_labels_indices.csv. The first line defines the column names: index,mid,display_name.
Subsequent lines describe the mapping for each class. For example:0,/m/09x0r,"Speech",which means that “labels” with value 0 indicate segments labeled with “Speech”.

#### Download Features
To download the features, you have the following options:

Manually download the tar.gz file from one of (depending on region):
storage.googleapis.com/us_audioset/youtube_corpus/v1/features/features.tar.gz
storage.googleapis.com/eu_audioset/youtube_corpus/v1/features/features.tar.gz
storage.googleapis.com/asia_audioset/youtube_corpus/v1/features/features.tar.gz

Use gsutil rsync, with the command:
gsutil rsync -d -r features gs://{region}_audioset/youtube_corpus/v1/features

Where {region} is one of “eu”, “us” or “asia”. For example:
gsutil rsync -d -r features gs://us_audioset/youtube_corpus/v1/features

You can use the YouTube-8M (https://research.google.com/youtube8m/index.html) starter code to train models on the released features from both AudioSet as well as YouTube-8M(https://github.com/google/youtube-8m). The code can be found in the YouTube-8M GitHub repository.




### Theano



##### Getting  Datasets

Get the datasets as described above

Make sure you have the bleeding edge version of Theano, or run

    pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

If you would like to work with your existing working environment, it should satisfy the following requirements:

Python 3 and dependencies
On Mac, can be installed with brew install python3
On Ubuntu/Debian, can be installed with apt-get install python3
Dependencies can be installed with pip install -r 
		youtube-dl==2017.9.15
		pafy==0.5.3.1
		multiprocessing-logging==0.2.4
		sox==1.3.0
		sk-video==1.1.8
		PySoundFile==0.9.0.post1
ffmpeg
On Mac, can be installed with brew install ffmpeg
On Ubuntu/Debian, can be installed with apt-get install ffmpeg
sox
On Mac, can be installed with brew install sox
On Ubuntu/Debian, can be installed with apt-get install sox

clone audiosetdl https://github.com/marl/audiosetdl.git Modules and scripts for downloading Google's AudioSet dataset, a dataset of ~2.1 million annotated segments from YouTube videos

##### Setup
* Clone the repository onto your machine.


* If you would like to get started right away with a standalone
  [(mini)conda](https://conda.io/miniconda.html), environment, run `setup.sh`
  in the project directory. This will install a local Anaconda environment in
  `<PROJECT DIR>/bin/miniconda`. You can find a `python` executable at
  `<PROJECT DIR>/bin/miniconda/bin/python`.
  * Example: `./setup.sh`

* If you would like to work with your existing working environment, it should
  satisfy the following requirements:
  * [Python 3](https://www.python.org/downloads/) and dependencies
    * On Mac, can be installed with `brew install python3`
    * On Ubuntu/Debian, can be installed with `apt-get install python3`
    * Dependencies can be installed with
      `pip install -r <PROJECT DIR>/requirements.txt`
  * [`ffmpeg`](https://www.ffmpeg.org/)
    * On Mac, can be installed with `brew install ffmpeg`
    * On Ubuntu/Debian, can be installed with `apt-get install ffmpeg`
  * [`sox`](http://sox.sourceforge.net/)
    * On Mac, can be installed with `brew install sox`
    * On Ubuntu/Debian, can be installed with `apt-get install sox`


###### Running

##### As a single script
* Run `python download_audioset.py`
    * If you are using the local standalone `conda` installation, either
      activate the conda virtual environment, or use the python executable found
      in the local conda installation.
    * The script will automatically download the scripts into your data
      directory if they do not exist and then start downloading the audio and
      video for all of the segments in parallel.
    * You can tweak how the downloading and processing is done. For example,
        * URL/path to dataset subset files
        * Audio/video format and codec
        * Different strategies for obtaining video
        * Number of multiprocessing pool workers used
        * Path to logging
    * Run `python download_audioset.py -h` for a full list of arguments

##### SLURM
This can be run as a batch of SLURM jobs

* Run `download_subset_files.sh`
  * Sets up the data directory structure in the given folder (which will be
    created) and downloads the AudioSet subset files to that directory.
    If the `--split <N>` option is used, the script splits the files into N
    parts, which will have a suffix for a job ID, e.g. `eval_segments.csv.01`.
  * Example: `./download_subset_files.sh --split 10 /home/user/audiosetdl/data`

* Use `sbatch` to run the `audiosetdl-job-array.s` job array script
  * SLURM job array script that can be run by sbatch. Be sure to edit this to
    change the
    location of the repository (`$SRCDIR`) and to set the data directory
    (`$DATADIR`). Update any other configurations, such as email notifications
    and memory usage as it fits your use case.
  * Example: `sbatch --array=1-10 audiosetdl-job-array.s`



### Keras
#### VGGish
The initial AudioSet release included 128-dimensional embeddings of each AudioSet segment produced from a VGG-like audio classification model that was trained on a large YouTube dataset (a preliminary version of what later became YouTube-8M).

Google provides a TensorFlow definition of this model, which they call VGGish, as well as supporting code to extract input features for the model from audio waveforms and to post-process the model embedding output into the same format as the released embedding features.

Installation
VGGish depends on the following Python packages:

numpy
scipy
resampy
tensorflow
six


These are all easily installable via, e.g., pip install numpy (as in the example command sequence below).

Any reasonably recent version of these packages should work. TensorFlow should be at least version 1.0. We have tested with Python 2.7.6 and 3.4.3 on an Ubuntu-like system with NumPy v1.13.1, SciPy v0.19.1, resampy v0.1.5, TensorFlow v1.2.1, and Six v1.10.0.

VGGish also requires downloading two data files:

VGGish model checkpoint, in TensorFlow checkpoint format.
Embedding PCA parameters, in NumPy compressed archive format.
After downloading these files into the same directory as this README, the installation can be tested by running python vggish_smoke_test.py which runs a known signal through the model and checks the output.



### Deeplearning4j

#### VGG16 pretrained model.

##### How to run the project: 

* IntelliJ IDE:<br />
This is a maven project. It's developed in IntelliJ. The project can be loaded and run in IntelliJ.
When run in IntelliJ, under "Run"->"Edit Configurations", update following:
  * VM options: -Xms8g -Xmx8g
  * Program arguments: <data path ie: C:\\Users\\tbhatia\\Desktop\\Research\\skymind\\data\\train>




## Cases where videos cannot be downloaded
* Video removed
* User account deleted
* Not available in country
* Need to sign in to view
* Video no longer exists
* Copyright takedown

