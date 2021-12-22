#!/usr/bin/env bash

export PIP_NO_INDEX=False
export PIP_NO_DEPENDENCIES=False
export PIP_IGNORE_INSTALLED=False

pip install PySide2==5.14.1
pip install numpy==1.19.5
# pip install wheel==0.32.0
pip install setuptools-scm