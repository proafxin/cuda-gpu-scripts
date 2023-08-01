# Scripts to install/uninstall cuda drivers for GPU support

**Important: Make sure your nvidia driver is the correct one. One way is to ensure that the driver version matches with the one that is used during the installation of cuda drivers.
If not, you might have to completely remove nvidia driver and reinstall it**

### Uninstall drivers

```
sudo chmod +x uninstall_cuda_driver_ubuntu.sh
sudo ./uninstall_cuda_driver_ubuntu.sh
```

### Install CUDA Drivers

```
sudo chmod +x install_cuda_gpu_drivers_ubuntu.sh
sudo ./install_cuda_gpu_drivers_ubuntu.sh
```

### Install Tensorrt (Optional)
You can (and probably should) skip this part.
