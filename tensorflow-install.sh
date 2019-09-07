#!/bin/bash
DLBENCH_ROOT=${DLBENCH_ROOT:=$HOME}
cd $DLBENCH_ROOT
conda create -n tensorflow python=2.7
source activate tensorflow
# Two options are recommended to install TensorFlow
# 1. Install via conda
# 2. Build from source
# You may refer https://www.tensorflow.org/install/ for detailed instructions.

conda install tensorflow
echo "By default, only TensorFlow with CPU support will be installed."
