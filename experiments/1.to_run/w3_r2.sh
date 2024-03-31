#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_r2 --configs sldp --seed 176 --batch_size 48 --train_ratio 1536 --env__w 3
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_r2 --configs sldp --seed 568 --batch_size 48 --train_ratio 1536 --env__w 3
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_r2 --configs sldp --seed 907 --batch_size 48 --train_ratio 1536 --env__w 3