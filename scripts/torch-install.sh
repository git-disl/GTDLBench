#!/bin/bash
DLBENCH_ROOT=${DLBENCH_ROOT:=$HOME/GTDLBench}
git clone https://github.com/YanzhaoWu/distro.git $DLBENCH_ROOT/torch --recursive
cd $DLBENCH_ROOT/torch
bash install-deps
./install.sh

