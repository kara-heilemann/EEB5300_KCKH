#!/bin/bash
#SBATCH --job-name=SPAdes_uc
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=400G
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##              SPAdes                                  ##
##########################################################

module load SPAdes/3.13.0

spades.py \
        -1 ../../03_Kraken/unclassified/unclassified_1.fastq \
        -2 ../../03_Kraken/unclassified/unclassified_2.fastq \
        -s ../../01_QualityControl/singles.fastq \
        --careful \
        --threads 8 \
        --memory 400 \
        -o . 


module unload SPAdes/3.13.0
