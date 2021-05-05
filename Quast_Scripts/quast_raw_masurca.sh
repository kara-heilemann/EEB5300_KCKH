#!/bin/bash
#SBATCH --job-name=quast_mas_raw
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=10G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##              Quality Assesment: QUAST                ##
##########################################################
# MaSuRCA
module load quast/5.0.2

quast.py ../04_Assembly/masurca2/CA/final.genome.scf.fasta \
        --threads 8 \
        -o masurca_raw


module unload quast/5.0.2
