#!/bin/bash
#SBATCH --job-name=jf21         
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 30
#SBATCH --mem=475G                      
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
jellyfish count -t 30 -C -m 21 -s 100G -o 21mer_out ../01_QualityControl/*fastq


