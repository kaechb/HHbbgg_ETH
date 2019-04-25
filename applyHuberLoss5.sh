#!/bin/bash
#SBATCH --job-name=test_gpu
#SBATCH --nodes=1       # request to run job on single node
#SBATCH --ntasks=10     # request 10 CPU's (t3gpu01: balance between CPU and GPU : 5CPU/1GPU)
#SBATCH --gres=gpu:1    # request 2 GPU's on machine
#SBATCH --time=80:00:00 # time limit of job (8 minutes
$CUDA_VISIBLE_DEVICES
ipython -i /t3home/kaechb/HHbbgg_ETH_devel/bregression/notebooks/predict_fit_ffwd_phoEnergy.py -- --training HuberLoss --inp-dir=/work/kaechb/ --inp-file=Ntup_10Nov_Photon_training_allvars.hd5    --target-dir=/t3home/kaechb/HuberLoss5smaller300 --out-dir=/t3home/kaechb/HuberLossApply5/






