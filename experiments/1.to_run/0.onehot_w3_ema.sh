#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_ema --configs sldp --seed 758 --env__w 3 --reward_EMA False
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_ema --configs sldp_large --seed 758 --env__w 3 --reward_EMA False

