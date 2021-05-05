#!/bin/bash
#SBATCH --job-name=masurca_ruh1
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 16
#SBATCH --mem=200G
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##              MASuRCA                                 ##
##########################################################
module load perl/5.28.1

module load MaSuRCA/3.3.4 

masurca config_file

bash assemble.sh

module unload MaSuRCA/3.3.4
