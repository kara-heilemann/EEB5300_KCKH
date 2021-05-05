#!/bin/bash
#SBATCH --job-name=jf21kruh_1
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 30
#SBATCH --mem=350G
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

echo "HOSTNAME: `hostname`"
echo "Start Time: `date`"


##########################################################
## jellyfish count k-mer=21                             ##
##########################################################

module load jellyfish/2.2.6
jellyfish count -t 30 -C -m 21 -s 100G -o jf21kruh1_out ../../03_Kraken/raw_unclassified_1.fastq ../../03_Kraken/raw_unclassified_2.fastq
jf21k_raw_himem.sh (END)
