#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed 568
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed 907
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed 176
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3 --configs sldp_image --seed 176
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w3 --configs sldp_image --seed 176 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/imagenet-1k
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w3 --configs sldp_image --seed 176 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/mnist