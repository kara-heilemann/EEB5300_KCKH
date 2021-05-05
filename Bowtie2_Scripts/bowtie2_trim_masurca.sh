#!/bin/bash
#SBATCH --job-name=bowtie2_mt
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
mkdir -p MaSuRCA_trim_index

module load bowtie2/2.3.5.1

bowtie2-build \
        --threads 8 \
        ../04_Assembly/masurca_trim/CA/final.genome.scf.fasta MaSuRCA_trim_index/MaSuRCA_trim_index

bowtie2 -x MaSuRCA_trim_index/MaSuRCA_trim_index \
        -U ../../raw_reads/BE8G1_R1.fastq.gz,../../raw_reads/BE8G1_R2.fastq.gz \
        -S MaSuRCA_trim.bowtie2.sam \
        --threads 8 2>MaSuRCA_trim.err


module unload bowtie2/2.3.5.1
