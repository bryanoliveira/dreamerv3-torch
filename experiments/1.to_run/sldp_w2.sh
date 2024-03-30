#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_onehot_w2 --configs sldp --seed 176 --batch_size 48 --train_ratio 3072
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_onehot_w2 --configs sldp --seed 568 --batch_size 48 --train_ratio 3072
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_onehot_w2 --configs sldp --seed 907 --batch_size 48 --train_ratio 3072
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_single_w2 --configs sldp_image --seed 467
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_imagenet_w2 --configs sldp_image --seed 467 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/imagenet-1k
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-sldp_mnist_w2 --configs sldp_image --seed 467 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/mnist