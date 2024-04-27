#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_ema --configs sldp --seed 758 --env__w 4 --reward_EMA False
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_ema --configs sldp_large --seed 758 --env__w 4 --reward_EMA False

