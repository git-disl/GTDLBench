#!bin/bash
# set the root directory of GTDLBench.
export DLBENCH_ROOT=${DLBENCH_ROOT:=`pwd`}

# Update .profile for Miniconda
BASHCONFIGFILE=~/.bashrc
if [ -f "$BASHCONFIGFILE" ]; then
    source $BASHCONFIGFILE
fi

#if [ -x "$(command -v conda)" ]; then
#    export CONDA_BASE=$(conda info --base)
#fi

# For Caffe
export PATH=$PATH:$DLBENCH_ROOT/caffe/build/tools
