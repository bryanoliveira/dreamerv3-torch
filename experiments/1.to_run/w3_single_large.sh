#!/bin/bash
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_large --configs sldp_large_image --seed 176
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_large --configs sldp_large_image --seed 568
bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_large --configs sldp_large_image --seed 907