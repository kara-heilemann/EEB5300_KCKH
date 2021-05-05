#!/bin/bash
#SBATCH --job-name=busco_mr
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=50G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##              BUSCO                                   ##      
##########################################################
# MaSuRCA

module load busco/5.0.0

busco -i ../../04_Assembly/masurca2/CA/final.genome.scf.fasta \
    -o MaSuRCA_raw \
    -l metazoa_odb10 \
    -m genome

module unload busco/5.0.0
