#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w5 --configs sldp_image --seed 176 --env__w 5 --env__image_folder single
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w5 --configs sldp_image --seed 568 --env__w 5 --env__image_folder single
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w5 --configs sldp_image --seed 907 --env__w 5 --env__image_folder single