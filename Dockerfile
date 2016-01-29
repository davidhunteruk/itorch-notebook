FROM ubuntu:14.04

MAINTAINER David Hunter <hello@dave-hunter.com>

RUN apt-get update && apt-get install -y \
  libzmq3-dev \
  libssl-dev \
  python-zmq \
  wget \
  curl

WORKDIR /root

# Install miniconda
ENV CONDA_DOWNLOAD_SCRIPT Miniconda-latest-Linux-x86_64.sh

RUN wget -q https://repo.continuum.io/miniconda/$CONDA_DOWNLOAD_SCRIPT \
      && bash $CONDA_DOWNLOAD_SCRIPT -b \
      && rm $CONDA_DOWNLOAD_SCRIPT

ENV PATH /root/miniconda2/bin:$PATH

# Install jupyter
RUN conda install -y jupyter

# Torch7 installation scripts - http://torch.ch/docs/getting-started.html
RUN curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash \
    && git clone https://github.com/torch/distro.git torch --recursive \
    && cd torch \
    && ./install.sh \
    && . install/bin/torch-activate

# Install iTorch
RUN git clone https://github.com/facebook/iTorch.git \
    && cd iTorch \
    && /root/torch/install/bin/luarocks make

ENV PATH /root/torch/install/bin:$PATH

WORKDIR /root/data
VOLUME /root/data

CMD ["itorch", "notebook", "--ip=0.0.0.0", "--no-browser"]