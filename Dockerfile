FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

# Okay I don't know if I need all these still, but :shrug:
RUN apt-get update -y && apt-get install wget bzip2 build-essential -y

# Miniconda latest
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    --quiet -O miniconda.sh && bash ./miniconda.sh -b && rm miniconda.sh
ENV PATH $PATH:/root/miniconda3/bin

RUN conda install -c pytorch -c fastai pytorch torchvision cudatoolkit=9.0 fastai jupyter -y
RUN conda install -c conda-forge rise -y

EXPOSE 8888
WORKDIR /root/notebooks
ENTRYPOINT [ "jupyter", "notebook", "--no-browser", "--ip", "0.0.0.0", "--allow-root"]
