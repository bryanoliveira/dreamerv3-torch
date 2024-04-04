#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w2 --configs sldp_image --seed 176 --env__w 2 --env__image_folder mnist
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w2 --configs sldp_image --seed 568 --env__w 2 --env__image_folder mnist
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w2 --configs sldp_image --seed 907 --env__w 2 --env__image_folder mnist

