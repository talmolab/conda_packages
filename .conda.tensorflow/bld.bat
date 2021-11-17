@echo off

set PIP_NO_INDEX=False
set PIP_NO_DEPENDENCIES=False
set PIP_IGNORE_INSTALLED=False

pip install numpy==1.19.5
pip install tensorflow==2.7.0
pip install tensorboard==2.7.0
pip install h5py==3.10.0
pip install opencv-python-headless==4.2.0.34
pip install setuptools-scm
