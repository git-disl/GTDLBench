# Kinetics
[The Kinetics dataset](https://deepmind.com/research/open-source/open-source-datasets/kinetics/)

Kinetics is a large-scale, high-quality dataset of YouTube video URLs which include a diverse range of human focused actions


## Statistics

The dataset consists of approximately 300,000 video clips, and covers 400 human action classes with at least 400 video clips for each action class. Each clip lasts around 10s and is labeled with a single class. All of the clips have been through multiple rounds of human annotation, and each is taken from a unique YouTube video. The actions cover a broad range of classes including human-object interactions such as playing instruments, as well as human-human interactions such as shaking hands and hugging

## Reference

https://arxiv.org/abs/1705.07750


## Dataset


The dataset is composed of three splits with corresponding CSV / JSON files:

Training set (9.2 MB zip file)
Validation set (781 kB zip file)
Test set (1.1 MB zip file, with annotations held out for the purpose of the
  ActivityNet challenge. Once the challenge is over, we plan to release the
  annotations.)



  
 In the CSV files, each row describes one video and the columns are organized as
follows:

label - (string) a human-readable name for the action class. Characters used
  are lowercase letters, spaces, and single quotation ('). (Held out for the
  test set.)
youtube_id - (string) the YouTube identifier of the video the segment was
  extracted from. One may view the selected video at
  http://youtu.be/${youtube_id}.
time_start - (integer) the starting time of the action snippet in the video, in
  seconds.
time_end - (integer) the ending time of the action snippet in the video, in
  seconds. 
split - (string) "train", "val", or "test".
is_cc - (bool) whether the video has a creative commons license, accessed on
  2017-04-18. (Held out for the test set.)

The JSON files contain the same data as the CSV files, but formatted
differently. Check the ActivityNet website for details at:
http://activity-net.org/.

The validation and test sets each contain a maximum of 50 and 100 videos per
class, respectively. However some classes may have less than the maximum, and
over time YouTube videos may be deleted or taken down from public viewing by
the uploading user. For the ActivityNet challenge, scoring will consider only
those videos available after the submission deadline.

In some cases the video may end before time_end, but we always provide a
10-second window from time_start to time_end, so as much of the clip should be
used as possible.

## Samples

![Kinetcs Sample](figures/kinetics.PNG)





### Tensorflow

[deeplearn-Kinetics-i3d](https://github.com/deepmind/kinetics-i3d):

#### Setup

First follow the instructions for [installing
Sonnet](https://github.com/deepmind/sonnet).

Then, clone this repository using

`$ git clone https://github.com/deepmind/kinetics-i3d`

### Sample code

Run the example code using

`$ python evaluate_sample.py`

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



##### Setup
* Clone the repository https://github.com/marl/audiosetdl.git onto your machine.


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

 `kinetics/filter_subset.sh <filter_list> <kinetics_subset_csv> <output_file>` will filter the given Kinetics subset csv file to contain only the classes in the given filter list, and put it in a format that is compatible with this script.


### Keras
[deeplearn-Kinetics-i3d](https://github.com/dlpbc/keras-kinetics-i3d):

#### Usage
`python evaluate_sample.py`

`or`

`[For help]
python evaluate_sample.py -h`






