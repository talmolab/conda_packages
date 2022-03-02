@echo off

set PIP_NO_INDEX=False
set PIP_NO_DEPENDENCIES=False
set PIP_IGNORE_INSTALLED=False

pip install PySide6==6.2.2.1
rem pip install numpy==1.19.5
rem pip install wheel==0.32.0
pip install setuptools-scm
