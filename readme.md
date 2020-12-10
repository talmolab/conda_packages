# sleap/conda_packages

`sleap/tensorflow`: [![TensorFlow package](https://anaconda.org/sleap/tensorflow/badges/platforms.svg)](https://anaconda.org/sleap/tensorflow)
<!-- `sleap/PySide2`: [![TensorFlow package](https://anaconda.org/sleap/PySide2/badges/platforms.svg)](https://anaconda.org/sleap/PySide2) -->

---

This repository contains conda build recipes and GitHub Actions workflows for building some common pip dependencies.

This serves primarily to support [SLEAP](https://sleap.ai) ([`murthylab/sleap`](https://github.com/murthylab/sleap)) by keeping big dependencies in a separate conda package rather than packaging them with SLEAP every time.

The packages can be browsed online at the [Anaconda sleap channel](https://anaconda.org/sleap/repo).

To install the compiled packages, just specify the channel, for example:

- Create a new environment: `conda create -c sleap -n my_env tensorflow=2.3.1`
- Install in existing environment: `conda install -c sleap tensorflow=2.3.1`
- Include in a `environment.yml` dependencies section: `sleap::tensorflow=2.3.1`

The `sleap/tensorflow` package includes the following libraries packaged from pip wheels:
- `numpy==1.18.1`
- `tensorflow==2.3.1`
- `tensorboard==2.3`
- `h5py==2.10.0`
- `opencv-python-headless==4.2.0.34`

This can be installed with or without GPU support since TensorFlow will now run in CPU mode if the CUDA drivers are not detected.

To enable GPU support, install CUDA Toolkit 10.1 and CuDNN 7.6. You can install these at the system level, or through existing conda packages:
- [`anaconda/cudatoolkit`](https://anaconda.org/anaconda/cudatoolkit)
- [`anaconda/cudnn`](https://anaconda.org/anaconda/cudnn)
