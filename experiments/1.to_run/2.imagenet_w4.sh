#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w4 --configs sldp_image --seed 176 --env__w 4 --env__image_folder imagenet-1k
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w4 --configs sldp_image --seed 271 --env__w 4 --env__image_folder imagenet-1k
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w4 --configs sldp_image --seed 568 --env__w 4 --env__image_folder imagenet-1k
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w4 --configs sldp_image --seed 758 --env__w 4 --env__image_folder imagenet-1k
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w4 --configs sldp_image --seed 907 --env__w 4 --env__image_folder imagenet-1k