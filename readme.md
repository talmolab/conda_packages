# sleap/conda_packages

![Build TensorFlow](https://github.com/talmo/conda_packages/workflows/Build%20TensorFlow/badge.svg) [![TensorFlow package](https://anaconda.org/sleap/tensorflow/badges/platforms.svg)](https://anaconda.org/sleap/tensorflow)

---

This repository contains conda build recipes and GitHub Actions workflows for building some common pip dependencies.

This serves primarily to support [SLEAP](https://sleap.ai) ([`talmolab/sleap`](https://github.com/talmolab/sleap)) by keeping big dependencies in a separate conda package rather than packaging them with SLEAP every time.

The packages can be browsed online at the [Anaconda sleap channel](https://anaconda.org/sleap/repo).

**Note**: Packages are built for Python 3.7.

To install the compiled packages, just specify the channel, for example:

- Create a new environment: `conda create -c sleap -n my_env tensorflow=2.10.1`
- Install in existing environment: `conda install -c sleap tensorflow=2.10.1`
- Include in a `environment.yml` dependencies section: `sleap::tensorflow=2.10.1`

This can be installed with or without GPU support since TensorFlow will now run in CPU mode if the CUDA drivers are not detected.

To enable GPU support, install CUDA Toolkit 11.3.1 and CuDNN 8.2.1. You can install these at the system level, or through existing conda packages:
- [`anaconda/cudatoolkit`](https://anaconda.org/anaconda/cudatoolkit)
- [`anaconda/cudnn`](https://anaconda.org/anaconda/cudnn)

## Quick install with GPU support

```
conda create -n my_env -c conda-forge -c nvidia -c sleap -c anaconda python=3.7 tensorflow=2.10 cudatoolkit=11.3 cudnn=8.2 cuda-nvcc=11.3
```

This will create an environment called `my_env` with TensorFlow and GPU support.