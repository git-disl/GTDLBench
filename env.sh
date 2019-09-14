#!bin/bash
# set the root directory of GTDLBench.
DLBENCH_ROOT=${DLBENCH_ROOT:=`pwd`}

# Update .profile for Miniconda
BASHCONFIGFILE=~/.bashrc
if [ -f "$BASHCONFIGFILE" ]; then
    source $BASHCONFIGFILE
fi

# For Caffe
export PATH=$PATH:$DLBENCH_ROOT/caffe/build/tools
