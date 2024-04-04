#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed 176 --batch_size 48 --train_ratio 3072 --env__w 3
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed 568 --batch_size 48 --train_ratio 3072 --env__w 3
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed 907 --batch_size 48 --train_ratio 3072 --env__w 3