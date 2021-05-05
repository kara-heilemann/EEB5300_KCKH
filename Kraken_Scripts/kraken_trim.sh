#!/bin/bash
#SBATCH --job-name=Kraken
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=200G
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date


cat ../01_QualityControl/trim_BE8G1_R1.fastq >> cat_R1.fq

cat ../01_QualityControl/trim_BE8G1_R2.fastq >> cat_R2.fq


module load kraken/2.0.8-beta
module load jellyfish/2.2.6
(END)
kraken2 -db /isg/shared/databases/kraken2/Standard \
        --paired cat_R1.fq cat_R2.fq \
        --use-names \
        --threads 16 \
        --output kraken_general.out \
        --unclassified-out unclassified#.fastq \
        --classified-out classified#.fastq      \
date


