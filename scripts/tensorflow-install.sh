#!/bin/bash
DLBENCH_ROOT=${DLBENCH_ROOT:=$HOME/GTDLBench}
cd $DLBENCH_ROOT
if ! [ -x "$(command -v conda)" ]; then
    echo "Error: Please intall conda by executing bash pre-install.sh or update the environment with source env.sh"
    exit 1 
fi
source $(conda info --base)/etc/profile.d/conda.sh
conda create -n tensorflow python=2.7
conda activate tensorflow
# Two options are recommended to install TensorFlow
# 1. Install via conda
# 2. Build from source
# You may refer https://www.tensorflow.org/install/ for detailed instructions.

conda install tensorflow
echo "By default, only TensorFlow with CPU support will be installed."
