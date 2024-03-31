#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_large --configs sldp_large --seed 176
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_large --configs sldp_large --seed 568
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_large --configs sldp_large --seed 907