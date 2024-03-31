#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_r2 --configs sldp_image --seed 176 --env__w 3 --train_ratio 1536 --env__image_folder single
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_r2 --configs sldp_image --seed 568 --env__w 3 --train_ratio 1536 --env__image_folder single
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_r2 --configs sldp_image --seed 907 --env__w 3 --train_ratio 1536 --env__image_folder single