#!/bin/bash
DLBENCH_ROOT=${DLBENCH_ROOT:=$HOME/GTDLBench}
cd $DLBENCH_ROOT
if ! [ -x "$(command -v conda)" ]; then
    echo "Error: Please intall conda by executing bash pre-install.sh or update the environment with source env.sh"
    exit 1 
fi
source $(conda info --base)/etc/profile.d/conda.sh
conda create -n caffe python=2.7
conda activate caffe
conda install caffe
