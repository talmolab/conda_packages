#!/usr/bin/env bash

export PIP_NO_INDEX=False
export PIP_NO_DEPENDENCIES=False
export PIP_IGNORE_INSTALLED=False

pip install --no-cache-dir -r ./requirements.txt

# pip install numpy==1.21.5
# pip install numpy==1.19.5
# pip install tensorflow==2.6.3
# pip install tensorflow==2.6.3
# pip install tensorboard==2.6.0
# # pip install h5py==3.1.0
# pip install opencv-python-headless==4.5.5.62
# pip install git+https://github.com/talmolab/wrap_opencv-python-headless.git@ede49f6a23a73033216339f29515e59d594ba921
# pip install setuptools-scm

# Copy the activate scripts to $PREFIX/etc/conda/activate.d.
# This will allow them to be run on environment activation.
for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/tf_${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/${PKG_NAME}_${CHANGE}.sh"
done