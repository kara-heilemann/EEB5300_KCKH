Last login: Mon May  3 19:27:58 on ttys000
(base) kheilemann@Karas-MacBook-Pro ~ % ssh kheilemann@xanadu-submit-ext.cam.uchc.edu
         !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
         !!!        RESOURCE USAGE POLICY       !!!
         !!! Uploading and/or processing of PHI !!!
         !!! or other protected data in the HPC !!!
         !!! environment is prohibited.         !!!
         !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
kheilemann@xanadu-submit-ext.cam.uchc.edu's password: 
Last login: Thu Apr 22 09:46:37 2021 from 068-118-183-080.res.spectrum.com

   Welcome to the UConn Health High Performance Computing cluster

        - Please always submit jobs using the scheduler

         - Please run your applications using modules

For more information on using Slurm with the Xanadu cluster please visit:
 http://bioinformatics.uconn.edu/resources-and-events/tutorials/xanadu/

         If you require technical support, please contact us
         through our website at http://hpc.uchc.edu/contact/

         !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
         !!!                RESOURCE USAGE POLICY                 !!!
         !!! Uploading and/or processing of PHI or other          !!! 
         !!! protected data in the HPC environment is prohibited. !!!
         !!!                                                      !!!
         !!! NOTICE: DO NOT RUN COMPUTE JOBS ON THIS NODE         !!!
         !!! Users found to be running compute jobs on submit     !!!
         !!! nodes risk having their jobs killed and work lost.   !!!
         !!!                                                      !!!
         !!! NOTICE: DO NOT USE SUBMIT NODES FOR FILE TRANSFERS   !!!
         !!! Please use either Globus or a compute node to        !!!
         !!! transfer large data files.                           !!!
         !!!                                                      !!!
         !!! Memory allocations are strictly enforced please      !!!
         !!! refer to "working with SLURM" section of Xanadu      !!!
         !!! tutorial at                                          !!!
         !!! https://bioinformatics.uconn.edu/resources-and-events/tutorials/xanadu/
         !!!                                                      !!!
         !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

                 Thank you... the UCHC HPC Team

You have used 0 TB of your 0 TB HOME directory data limit
-bash-4.2$ srun --partition=general --qos=general --pty bash
srun: job 2949100 queued and waiting for resources
srun: job 2949100 has been allocated resources
bash-4.2$ cd /projects/cestodes-5300/kara/02_GenomeSize/
bash-4.2$ ls
21mer_out	      jellyfish21.sh	jf21histo_2864355.err  unclassified
21mer_out.histo       jf21_2864310.err	jf21histo_2864355.out
jellyfish21_histo.sh  jf21_2864310.out	RAW
bash-4.2$ less jellyfish21.sh 
bash-4.2$ cd ../01_QualityControl/
bash-4.2$ ls
qual_control_210328.sh		  raw2_quality_control_2864364.out  trim_BE89G1_R1.fastq
qual_control_210329.sh		  raw2_quality_control_2864378.err  trim_BE89G1_R2.fastq
raw1_quality_control_2861388.err  raw2_quality_control_2864378.out  trim_BE8G1_R1.fastq
raw1_quality_control_2861388.out  RAWfastqc_OUT			    trim_BE8G1_R2.fastq
raw2_quality_control_2864364.err  singles.fastq			    TRIMfastqc_OUT
bash-4.2$ cd RAWfastqc_OUT/
bash-4.2$ ls
BE8G1_R1_fastqc.html  BE8G1_R1_fastqc.zip  BE8G1_R2_fastqc.html  BE8G1_R2_fastqc.zip
bash-4.2$ cd ..
bash-4.2$ ls TRIMfastqc_OUT/
trim_BE8G1_R1_fastqc.html  trim_BE8G1_R1_fastqc.zip
bash-4.2$ cd ..
bash-4.2$ cd 02_GenomeSize/
bash-4.2$ ls
21mer_out	 jellyfish21_histo.sh  jf21_2864310.err  jf21histo_2864355.err	RAW
21mer_out.histo  jellyfish21.sh        jf21_2864310.out  jf21histo_2864355.out	unclassified
bash-4.2$ cd RAW/
bash-4.2$ ls
jf21k_raw_himem.sh	 jf21_kr_raw.sh		 jf21kruh1_out	       jfkruh1_histo_2905445.err
jf21_kr_raw_2898498.err  jf21kruh_1_2905200.err  jf21kruh1_out.histo   jfkruh1_histo_2905445.out
jf21_kr_raw_2898498.out  jf21kruh_1_2905200.out  jf21kruh_2904878.err
jf21_kr_raw_himem.sh	 jf21kruh1_histo.sh	 jf21kruh_2904878.out
bash-4.2$ les jf21
jf21k_raw_himem.sh       jf21_kr_raw.sh           jf21kruh1_out
jf21_kr_raw_2898498.err  jf21kruh_1_2905200.err   jf21kruh1_out.histo
jf21_kr_raw_2898498.out  jf21kruh_1_2905200.out   jf21kruh_2904878.err
jf21_kr_raw_himem.sh     jf21kruh1_histo.sh       jf21kruh_2904878.out
bash-4.2$ les jf21kruh1_out
bash: les: command not found
bash-4.2$ ls jf21kruh1_out
jf21kruh1_out
bash-4.2$ less jf21kruh_out
jf21kruh_out: No such file or directory
bash-4.2$ less jf21kruh1_out
bash-4.2$ less jf21kruh1_out.histo
bash-4.2$ less jf21kruh1_histo.sh 
bash-4.2$ ls
jf21k_raw_himem.sh	 jf21_kr_raw.sh		 jf21kruh1_out	       jfkruh1_histo_2905445.err
jf21_kr_raw_2898498.err  jf21kruh_1_2905200.err  jf21kruh1_out.histo   jfkruh1_histo_2905445.out
jf21_kr_raw_2898498.out  jf21kruh_1_2905200.out  jf21kruh_2904878.err
jf21_kr_raw_himem.sh	 jf21kruh1_histo.sh	 jf21kruh_2904878.out
bash-4.2$ less jf21k_raw_himem.sh 
bash-4.2$ less jf21_kr_raw.sh 
bash-4.2$ less jf21_kr_raw_
jf21_kr_raw_2898498.err  jf21_kr_raw_2898498.out  jf21_kr_raw_himem.sh
bash-4.2$ less jf21_kr_raw_himem.sh 
bash-4.2$ less jf21k_raw_himem.sh 
bash-4.2$ cd ..
bash-4.2$ ls
21mer_out	 jellyfish21_histo.sh  jf21_2864310.err  jf21histo_2864355.err	RAW
21mer_out.histo  jellyfish21.sh        jf21_2864310.out  jf21histo_2864355.out	unclassified
bash-4.2$ less 21mer_out.histo 
bash-4.2$ less jellyfish21_histo.sh 

#!/bin/bash
#SBATCH --job-name=jf21histo    
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
jellyfish histo -o 21mer_out.histo 21mer_out
jellyfish21_histo.sh

