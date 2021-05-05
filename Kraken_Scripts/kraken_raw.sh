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


cat ../../raw_reads/BE8G1_R1.fastq.gz >> cat_R1raw.fq

cat ../../raw_reads/BE8G1_R2.fastq.gz >> cat_R2raw.fq


module load kraken/2.0.8-beta
module load jellyfish/2.2.6

kraken2 -db /isg/shared/databases/kraken2/Standard \
        --paired cat_R1raw.fq cat_R2raw.fq \
        --use-names \
        --threads 16 \
        --output kraken_raw_general.out \
        --unclassified-out raw_unclassified#.fastq \
        --classified-out raw_classified#.fastq      \
        --report raw_kraken_report.txt \
        --use-mpa-style

date
