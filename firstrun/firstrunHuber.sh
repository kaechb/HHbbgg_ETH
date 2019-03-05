#!/bin/bash
#SBATCH --job-name=test_gpu
#SBATCH --nodes=1       # request to run job on single node
#SBATCH --ntasks=10     # request 10 CPU's (t3gpu01: balance between CPU and GPU : 5CPU/1GPU)
#SBATCH --gres=gpu:1    # request 2 GPU's on machine
#SBATCH --time=00:08:00 # time limit of job (8 minutes
$CUDA_VISIBLE_DEVICES
python /t3home/kaechb/HHbbgg_ETH_devel/bregression/notebooks/train_ffwd_phoEnergy.py --inp-dir=/scratch/mdonega/ntuples_NN --inp-file=Ntup_10Nov_Photon_training_allvars.hd5 --loss HuberLoss --epochs=100 --out-dir=/work/kaechb/firstrunHuber
 ipython -i predict_fit_ffwd_phoEnergy.py -- --training HuberLoss --inp-dir=/scratch/mdonega/ntuples_NN/ --inp-file=Ntup_10Nov_Photon_training_allvars.hd5 --target-dir=/work/kaechb/firstrunHuber --out-dir=/work/kaechb/firstrunHuber

