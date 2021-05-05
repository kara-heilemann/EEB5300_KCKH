#!/bin/bash
#SBATCH --job-name=raw2_quality_control           
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=2G                        
#SBATCH --partition=general             
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kara.heilemann@uconn.edu
#SBATCH -o %x_%j.out                    
#SBATCH -e %x_%j.err                    

echo "HOSTNAME: `hostname`"      
echo "Start Time: `date`"        


##########################################################
## quality control                                      ##
##########################################################

module load sickle/1.33                         

sickle pe \
        -f ../../raw_reads/BE8G1_R1.fastq.gz \
        -r ../../raw_reads/BE8G1_R2.fastq.gz \
        -t sanger \
        -o trim_BE8G1_R1.fastq \
        -p trim_BE8G1_R2.fastq \
        -s singles.fastq \      
        -q 30 \         
        -l 45                                   

module unload sickle/1.33
echo "End of sickle: `date`"


##########################################################
## FASTQC Raw Reads                                     ##
##########################################################
module load fastqc/0.11.7
#mkdir -p RAWfastqc_OUT

#fastqc -o ./RAWfastqc_OUT ../../raw_reads/BE8G1_R1.fastq.gz ../../raw_reads/BE8G1_R2.fastq.gz


##########################################################
## FASTQC Trimmed Reads                                 ##
##########################################################
#mkdir -p TRIMfastqc_OUT

fastqc -o ./TRIMfastqc_OUT ./trim_BE8G1_R1.fastq ./trim_BEG1_R2.fastq


echo "End of FASTQC: `date`"

