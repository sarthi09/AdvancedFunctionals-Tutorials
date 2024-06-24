#!/bin/bash
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 1:00:00
#SBATCH --ntasks-per-node=32

#echo commands to stdout
set -x

# load the environment
module load intel python
source /ocean/projects/che240027p/shared/software/Team_RU/env.bash

# Create the user-specific directory if it doesn't exist
USER_DIR="/ocean/projects/che240027p/shared/day2/$USER/exercise3"
mkdir -p $USER_DIR

# Copy files to the user-specific directory and navigate to it
cp * $USER_DIR
cd $USER_DIR

# run the calculation in the user-specific directory (do not run on HOME!)
mpirun -np $SLURM_NTASKS $qedir/bin/pw.x < Si.scf.in > Si.scf.out
