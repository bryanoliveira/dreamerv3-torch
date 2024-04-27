#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_ema --configs sldp --seed 758 --env__w 3 --reward_EMA false
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w4_ema --configs sldp --seed 758 --env__w 4 --reward_EMA false

