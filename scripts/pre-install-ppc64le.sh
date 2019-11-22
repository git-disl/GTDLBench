#!/bin/bash
source env.sh

function jumpto
{
	label=$1
	cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
	eval "$cmd"
	exit
}

start=${1:-"start"}

jumpto $start

start:
# Math Library
echo "Install OpenBLAS"
# If not found, execute the following command.
sudo apt-get update
apt-cache search openblas
sudo apt-get install libopenblas-dev
echo "For MKL, you may refer to https://software.intel.com/en-us/mkl for further instructions"
# Conda Library
# Miniconda Install
wget https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-ppc64le.sh
#install Miniconda
bash Miniconda2-latest-Linux-ppc64le.sh
rm Miniconda2-latest-Linux-ppc64le.sh

jumpto end

GPU:
# CUDA
echo "Fetching CUDA 8.0 for Ubuntu 16.04"
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda-8-0
rm cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
# cuDNN
echo "You need to download the cuDNN 6.0 from https://developer.nvidia.com/cudnn"
echo "And it is recommended to install cuDNN under the CUDA directory"
# tar -zxvf  cudnn-8.0-linux-x64-v6.0.tgz -C /usr/local/
jumpto end

end:

echo "You may execute: ./pre-install.sh GPU to install CUDA and cuDNN." 
echo "For GPU configurations, please refer to CUDA (https://developer.nvidia.com/cuda-zone) and cuDNN (https://developer.nvidia.com/cudnn) for detailed instructions."
