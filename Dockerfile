FROM  nvidia/cuda:11.4.0-cudnn8-devel-ubuntu20.04

RUN apt update \
    && apt install -y \
    wget \
    bzip2 \
    git \
    curl \
    unzip \
    vim \
    ffmpeg \
    mecab \
    libmecab-dev \
    mecab-ipadic-utf8 \
    file \
    xz-utils \
    sudo \
    python3 \
    python3-pip

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install setuptools
RUN python3 -m pip install wheel
#RUN python3 -m pip install pandas==0.25.1 # 入らんので最新版入れる
RUN python3 -m pip install pandas
RUN python3 -m pip install requests
RUN python3 -m pip install museval==0.3.0
RUN python3 -m pip install musdb==0.3.1
RUN python3 -m pip install norbert==0.2.1
RUN python3 -m pip install spleeter
