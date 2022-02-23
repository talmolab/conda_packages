@echo off

set PIP_NO_INDEX=False
set PIP_NO_DEPENDENCIES=False
set PIP_IGNORE_INSTALLED=False

rem pip install numpy==1.21.5
rem pip install numpy==1.19.5
pip install tensorflow==2.6.3
pip install tensorboard==2.6.0
rem pip install h5py==3.1.0
pip install opencv-python-headless==4.5.5.62
pip install git+https://github.com/talmolab/wrap_opencv-python-headless.git@ede49f6a23a73033216339f29515e59d594ba921
pip install setuptools-scm
