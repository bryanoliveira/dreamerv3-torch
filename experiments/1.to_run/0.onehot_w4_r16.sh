#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_r16 --configs sldp --seed 176 --env__w 4 --train_ratio 64
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_r16 --configs sldp --seed 271 --env__w 4 --train_ratio 64
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_r16 --configs sldp --seed 568 --env__w 4 --train_ratio 64
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_r16 --configs sldp --seed 758 --env__w 4 --train_ratio 64
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_r16 --configs sldp --seed 907 --env__w 4 --train_ratio 64

