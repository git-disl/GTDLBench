#!/bin/bash
DLBENCH_ROOT=${DLBENCH_ROOT:=$HOME/GTDLBench}
cd $DLBENCH_ROOT
echo "If you did not install Miniconda, please execute '\$bash pre-install.sh' first"

# Miniconda Install
#wget https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-x86_64.sh
# Install Miniconda
#bash Miniconda2-latest-Linux-x86_64.sh
cd $DLBENCH_ROOT
if ! [ -x "$(command -v conda)" ]; then
    echo "Error: Please intall conda by executing bash pre-install.sh or update the environment with source env.sh"
    exit 1
fi
source $(conda info --base)/etc/profile.d/conda.sh
conda create -n theano python=2.7
source activate theano
# Two options are recommended to install TensorFlow
# 1. Install via conda
# 2. Build from source (Recommended)
# You may refer http://deeplearning.net/software/theano/install.html for detailed instructions.

conda install numpy scipy mkl
conda install theano pygpu
echo "By default, only Theano with CPU support will be installed."
