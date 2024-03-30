#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_onehot_w4 --configs sldp --seed 176 --batch_size 48 --train_ratio 3072
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_onehot_w4 --configs sldp --seed 568 --batch_size 48 --train_ratio 3072
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_onehot_w4 --configs sldp --seed 907 --batch_size 48 --train_ratio 3072
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_single_w4 --configs sldp_image --seed 176
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_imagenet_w4 --configs sldp_image --seed 176 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/imagenet-1k
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_mnist_w4 --configs sldp_image --seed 176 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/mnist