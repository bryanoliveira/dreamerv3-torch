#!/bin/bash

mkdir -p 1.to_run 2.queued 3.running 4.executed


while true; do
  # Check if there are any scripts in the "./to_run" folder
  if [ -n "$(ls -A ./1.to_run)" ]; then
    # Get the first script in the "experiments/1.to_run" folder
    script=$(ls ./1.to_run | head -n 1)

    echo "---- Moving $script to 2.queued"
    mv "./1.to_run/$script" "./2.queued/$script"
    echo "---- Queued $script"

    # Check if there is at least 30% of RAM available
    ram_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
    # Check if there is at least 30% of VRAM available
    vram_usage=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits | head -n 1)

    while true; do
      if (( $(echo "$ram_usage < 70" | bc -l) )) && (( $(echo "$vram_usage < 20000" | bc -l) )); then
        # If there is enough RAM available, break the loop and continue with the execution
        echo "---- Running $script"
        break
      else
        # If there is not enough RAM available, print current timestamp and sleep
        echo "---- Waiting. RAM usage: $ram_usage% / VRAM usage: $vram_usage MB"
        date
        sleep 180

        ram_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
        vram_usage=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits | head -n 1)
      fi
    done

    echo "---- Moving $script to 3.running"
    mv "./2.queued/$script" "./3.running/$script"

    # Execute the script
    source "./3.running/$script"

    echo "---- Moving $script to 4.executed"
    mv "./3.running/$script" "./4.executed/$script"
  else
    # If there are no scripts in the "./1.to_run" folder, print current timestamp and sleep
    echo "---- No scripts to run"
    date
    sleep 10
  fi
done
