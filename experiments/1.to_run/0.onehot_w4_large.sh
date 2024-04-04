#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_large --configs sldp_large --seed 176 --env__w 4
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_large --configs sldp_large --seed 271 --env__w 4
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_large --configs sldp_large --seed 568 --env__w 4
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_large --configs sldp_large --seed 758 --env__w 4
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_large --configs sldp_large --seed 907 --env__w 4

