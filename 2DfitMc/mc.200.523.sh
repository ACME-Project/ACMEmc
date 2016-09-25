#!/bin/bash
#
# srun command for CSCI-6360 group project.
# USAGE: /full/path/to/./q_MC.out [--help]
#                                 [--init dimension [outfile]]
#                                 [--nonstop dimension outfile steps [increment]]
#                                 [infile [outfile] steps [increment]]
#
#SBATCH --mail-type=END
#SBATCH --mail-user=tany3@rpi.edu
#SBATCH -D /gpfs/u/home/ACME/ACMEtany/scratch/MSMSEpaper/2Dfit/8
#SBATCH --partition small                                                                                                                             
#SBATCH -t 150                                                                                                                                                                     
#SBATCH -N 32                                                                                                                                                                      
#SBATCH -n 2048                                                                                                                                                                    
#SBATCH --overcommit
#SBATCH -o /gpfs/u/home/ACME/ACMEtany/scratch/MSMSEpaper/2Dfit/8/2dfit.log

srun --runjob-opts="--mapping TEDCBA" /gpfs/u/home/ACME/ACMEtany/barn/MSMSEpaper/2DfitMc/q_MC.out --nonstop 2 voronmc.0000.dat 75 75 0 4 673 673
