#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w4 --configs sldp_image --seed 176 --env__w 4 --env__image_folder mnist
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w4 --configs sldp_image --seed 568 --env__w 4 --env__image_folder mnist
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w4 --configs sldp_image --seed 907 --env__w 4 --env__image_folder mnist