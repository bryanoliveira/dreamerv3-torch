# 1. Test setup:
# docker run -it --rm --gpus all pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime nvidia-smi
#
# If the above does not work, try adding the --privileged flag
# and changing the command to `sh -c 'ldconfig -v && nvidia-smi'`.
#
# 2. Start training:
# docker build --build-arg GIT_COMMIT=$(git rev-parse HEAD) -f Dockerfile -t bryan-dreamerv3:latest .
# docker run -it --rm --gpus all -v $PWD:/workspace -u $(id -u):$(id -g) img \
#   sh xvfb_run.sh python3 dreamer.py \
#   --configs dmc_vision --task dmc_walker_walk \
#   --logdir "./logdir/dmc_walker_walk"
#
# 3. See results:
# tensorboard --logdir ~/logdir

# System
FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/San_Francisco
ENV PYTHONUNBUFFERED 1
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PIP_NO_CACHE_DIR 1
RUN apt-get update && apt-get install -y \
    libglew2.1 libgl1-mesa-glx libosmesa6 \
    wget unrar cmake g++ libgl1-mesa-dev \
    libx11-6 openjdk-8-jdk x11-xserver-utils xvfb \
    && apt-get clean
RUN pip3 install --upgrade pip

# Envs
ENV NUMBA_CACHE_DIR=/tmp

COPY requirements.txt requirements.txt
RUN pip3 install setuptools==60.0.0
RUN pip3 install -r requirements.txt

# atari setup
# RUN pip3 install atari-py==0.2.9
# RUN mkdir roms && cd roms
# RUN wget -L -nv http://www.atarimania.com/roms/Roms.rar
# RUN unrar x -o+ Roms.rar
# RUN python3 -m atari_py.import_roms ROMS
# RUN cd .. && rm -rf roms

ARG GIT_COMMIT
ENV GIT_COMMIT=$GIT_COMMIT
ENV WANDB_API_KEY=599a6016bab9e23813a2be6f46e4b0cb86595d45
RUN mkdir /dreamer
COPY . /dreamer
RUN chown -R 1000:root /dreamer && chmod -R 775 /dreamer
WORKDIR /dreamer

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]