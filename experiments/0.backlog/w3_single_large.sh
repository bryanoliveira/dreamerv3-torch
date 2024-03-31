#!/bin/bash
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_large --configs sldp_large_image --seed 176
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_large --configs sldp_large_image --seed 568
python dreamer.py --logdir ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w3_large --configs sldp_large_image --seed 907