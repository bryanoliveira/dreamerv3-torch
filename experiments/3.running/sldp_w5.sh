#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w5 --configs sldp --seed 176 --batch_size 48 --train_ratio 3072 --env__w 5
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w5 --configs sldp --seed 568 --batch_size 48 --train_ratio 3072 --env__w 5
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w5 --configs sldp --seed 907 --batch_size 48 --train_ratio 3072 --env__w 5
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3 --configs sldp_image --seed 176
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-imagenet_w3 --configs sldp_image --seed 176 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/imagenet-1k
# python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-mnist_w3 --configs sldp_image --seed 176 --env__image_folder /mnt/data/Documents/sliding-puzzle/imgs/mnist