#!/bin/bash
#SBATCH --job-name=test_gpu
#SBATCH --nodes=1       # request to run job on single node
#SBATCH --ntasks=10     # request 10 CPU's (t3gpu01: balance between CPU and GPU : 5CPU/1GPU)
#SBATCH --gres=gpu:1    # request 2 GPU's on machine
#SBATCH --time=00:08:00 # time limit of job (8 minutes)
echo yes
