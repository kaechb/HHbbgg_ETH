#!/bin/bash
#SBATCH --job-name=test_gpu
#SBATCH --nodes=1       # request to run job on single node
#SBATCH --ntasks=10     # request 10 CPU's (t3gpu01: balance between CPU and GPU : 5CPU/1GPU)
#SBATCH --gres=gpu:1    # request 2 GPU's on machine
#SBATCH --time=80:00:00 # time limit of job (8 minutes
$CUDA_VISIBLE_DEVICES
python /t3home/kaechb/HHbbgg_ETH_devel/bregression/notebooks/train_ffwd_phoEnergy.py --inp-dir=/work/kaechb --inp-file=Ntup_10Nov_Photon_training_allvars.hd5 --loss HuberLoss --loss_params {\"delta\":5}  --epochs=100 --out-dir=/t3home/kaechb/HuberLoss5smaller300







