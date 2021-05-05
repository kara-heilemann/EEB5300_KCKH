#!/bin/bash
#SBATCH --job-name=bowtie2_raw_masurca
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=5G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##              Quality Assesment: bowtie2              ##
##########################################################
# MaSuRCA
mkdir -p MaSuRCA_index

module load bowtie2/2.3.5.1

bowtie2-build \
        --threads 8 \
        ../04_Assembly/masurca2/CA/final.genome.scf.fasta MaSuRCA_index/MaSuRCA_index

bowtie2 -x MaSuRCA_index/MaSuRCA_index \
        -U ../../raw_reads/BE8G1_R1.fastq.gz,../../raw_reads/BE8G1_R2.fastq.gz \
        -S MaSuRCA.bowtie2.sam \
        --threads 8 2>MaSuRCA.err


module unload bowtie2/2.3.5.1
