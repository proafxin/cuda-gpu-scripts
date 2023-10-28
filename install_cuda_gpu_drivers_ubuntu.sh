#!/usr/bin/bash

sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt install cuda-11-8
cd || exit
sudo apt install git
git clone https://github.com/NVIDIA/cuda-samples.git

export PATH=${PATH}:/usr/local/cuda-11.8/bin
export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64:${LD_LIBRARY_PATH}
# Restart shell or pc if it does not work
cd cuda-samples/Samples/1_Utilities/deviceQuery || exit
make clean
make
make run
sudo apt install libcudnn8=8.6.0.163-1+cuda11.8
sudo apt install libcudnn8-dev=8.6.0.163-1+cuda11.8
sudo apt install libcudnn8-samples
cp -r /usr/src/cudnn_samples_v8/ "${HOME}"
cd  "${HOME}"/cudnn_samples_v8/mnistCUDNN || exit

sudo apt install libfreeimage-dev libfreeimage3 -y
sudo apt install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev -y
make clean && make
make run
cd || exit