#!/usr/bin/env bash

export PIP_NO_INDEX=False
export PIP_NO_DEPENDENCIES=False
export PIP_IGNORE_INSTALLED=False

pip install --no-cache-dir -r ./requirements.tensorflow.txt

# Copy the activate scripts to $PREFIX/etc/conda/activate.d.
# This will allow them to be run on environment activation.
for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/tensorflow_${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/tensorflow_${CHANGE}.sh"
done