@echo off

set PIP_NO_INDEX=False
set PIP_NO_DEPENDENCIES=False
set PIP_IGNORE_INSTALLED=False

pip install PySide2==5.14.1
pip install numpy==1.19.5
pip install setuptools-scm
