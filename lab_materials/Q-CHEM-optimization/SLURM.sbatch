#!/bin/bash
#SBATCH --array=5
#SBATCH --job-name=motor
#SBATCH --time=1-00:00:00
#SBATCH --nodes=1 --ntasks=14
#SBATCH -o output -e error -p zimintel
#SBATCH --mail-type=END --mail-user=craldaz@umich.edu

time

. /etc/profile.d/slurm.sh

item=$SLURM_ARRAY_TASK_ID
ID=`printf "%0*d\n" 2 ${item}`
cd $SLURM_SUBMIT_DIR
name=`ls q$ID.*.com`
echo name
name_out=`ls q$ID*.com | cut -d'.' -f2`

module load qchem 
qchem -nt 14  $name ${ID}.motor.out

wait

