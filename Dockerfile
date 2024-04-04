# 1. Test setup:
# docker run -it --rm --gpus all nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04 nvidia-smi
#
# If the above does not work, try adding the --privileged flag
# and changing the command to `sh -c 'ldconfig -v && nvidia-smi'`.
#
# 2. Start training:
# docker build --build-arg GIT_COMMIT=$(git rev-parse HEAD) -f Dockerfile -t bryan-dreamerv3:latest .
# docker run -it --rm --gpus '"device=0"' --cpus=4.0 --memory=16g -v /raid/bryan/dreamerv3/experiments:/dreamer/experiments -v /raid/bryan/dreamerv3/logdir:/dreamer/logdir bryan-dreamerv3 bash experiments/pacman_baseline.sh
# or
# docker run -it --rm --gpus '"device=0"' --cpus=4.0 --memory=16g -v /mnt/hdd/bryan/Documents/projects/dreamerv3-torch/experiments:/dreamer/experiments -v /mnt/hdd/bryan/Documents/projects/dreamerv3-torch/logdir:/dreamer/logdir bryan-dreamerv3 bash experiments/pacman_baseline.sh
#
# 3. See results:
# tensorboard --logdir ~/logdir

# System
FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo
ENV PYTHONUNBUFFERED 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PIP_NO_CACHE_DIR 1
RUN apt-get update && apt-get install -y \
  ffmpeg git wget unzip python3-pip vim \
  libgl1-mesa-glx libosmesa6 libglew-dev python3-opengl \
  x11-xserver-utils xvfb build-essential cmake \
  && apt-get clean
RUN pip3 install --upgrade pip

# Configs
ENV MUJOCO_GL egl
ENV DMLAB_DATASET_PATH /dmlab_data
ENV DAVIS_DATASET_PATH=/davis_data
ENV NUMBA_CACHE_DIR=/tmp

# Requirements
COPY requirements.expanded.txt requirements.expanded.txt
RUN pip3 install -r requirements.expanded.txt

# Datasets
# RUN wget -O DAVIS-2017-trainval-480p.zip https://data.vision.ee.ethz.ch/csergi/share/davis/DAVIS-2017-trainval-480p.zip
# RUN unzip DAVIS-2017-trainval-480p.zip -d /davis_data
# RUN rm DAVIS-2017-trainval-480p.zip

# Embodied
ARG GIT_COMMIT
ENV GIT_COMMIT=$GIT_COMMIT
ENV WANDB_API_KEY=599a6016bab9e23813a2be6f46e4b0cb86595d45
RUN mkdir /dreamer
COPY src /dreamer/src
COPY experiments /dreamer/experiments
COPY experiment.sh /dreamer/experiment.sh
RUN chown -R 1000:root /dreamer && chmod -R 775 /dreamer
WORKDIR /dreamer