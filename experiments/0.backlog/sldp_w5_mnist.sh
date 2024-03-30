#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w5 --configs sldp_image --seed 176 --env__w 5 --env__image_folder mnist
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w5 --configs sldp_image --seed 568 --env__w 5 --env__image_folder mnist
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w5 --configs sldp_image --seed 907 --env__w 5 --env__image_folder mnist