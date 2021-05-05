#!/bin/bash
#SBATCH --job-name=jfkruh1_histo    
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=5G                        
#SBATCH --partition=general             
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%j.out                    
#SBATCH -e %x_%j.err                    

echo "HOSTNAME: `hostname`"      
echo "Start Time: `date`"        


##########################################################
## jellyfish count k-mer=21 frequencies                 ##
##########################################################

module load jellyfish/2.2.6
jellyfish histo -o jf21kruh1_out.histo jf21kruh1_out
