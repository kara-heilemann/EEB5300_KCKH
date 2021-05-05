#!/bin/bash
#SBATCH --job-name=busco_SPAdes
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=100G
#SBATCH --partition=xeon
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=khalia.cain@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##		BUSCO					##	
##########################################################
# SPAdes

module load busco/5.0.0


busco -i ../03_assembly/SPAdes/misc/assembled_scaffolds.fasta \
	-o SPAdes_unclass_trim3 \
	-l metazoa_odb10 \
	-m genome


module unload busco/5.0.0 
date
