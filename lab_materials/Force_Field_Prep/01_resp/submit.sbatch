#! /bin/bash
#SBATCH -t 40:00:00
#SBATCH -J min
#SBATCH --qos=cpu_bigmem
#SBATCH -c 2
#SBATCH --mem=100Gb
#SBATCH --fin=*
#SBATCH --fout=*
cd $SCRATCH

gsm -xyzfile 01.motor.xyz \
    -mode SE_GSM \
    -only_drive \
    -isomers isomer.txt \
    -package OpenMM \
    -lot_inp_file simulation.txt \
    -coordinate_type DLC \
    -linesearch backtrack \
    -ADD_NODE_TOL 0.001 \
    -optimizer eigenvector_follow > log_tmp 2>&1
