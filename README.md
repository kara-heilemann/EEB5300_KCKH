# EEB5300_KCKH

## **Overview**
  
  Tapeworms are obligate endoparasites that infect a variety of hosts globally.  Larval tapeworm infections can particularly effect people in developing countries.  In 2015, the larval form of cystic echinococcosis resulted in an estimated 126,800 years lost to disability (1).  Similarly, tapeworms can also affect animals.  For example, these parasites were shown to provide a production challenge for cattle raisers in Belgium as illustrated in a study conducted from 2012-2016.  Here, Bovine cysticercosis caused by the Taenia saginata tapeworm was shown to occur in approximately 1,183 carcasses yearly which resulted in a loss of $4,043,126 for cattle farmers per year (2). The economic impact of this loss in revenue and product greatly affected cattle farmers and consumers alike.
  
  Cestodes, class Cestoda, are tapeworms that are especially unique in their multihost lifecycles. They often parasitize one or more animals in their larval stage, known as an intermediate host, and eventually the tapeworms take up residence in a different animal during the adult stage, known as a definitive host (1). These endoparasites are renowned for the great degree of host specificity they exhibit as these tapeworms are known to solely infect sharks, skates and rays. However, the true biodiversity of these tapeworms remains unknown as the current count of tapeworm species is approximately 5,000 while there is an estimated 20,000 species worldwide (3).  
  
  Since in most orders, tapeworm larva generally lack distinct morphological features, they are characterized by traits exhibited by the adult tapeworms.  Adult species are generally identified by their anterior head region, or scolex, followed by a germinative region, or neck. The neck serves as a site of cell proliferation and it produces proglottids or individual reproductive units that contain all of the sexual organs required to produce eggs(4).   

  In our project, we will focus on _Acanthobothrium tortum_, which is of the order Onchoproteocephalidea. _Acanthobothrium_ is currently the most diverse genus of tapeworms, boasting 201 valid, described species (5). They parasitize the intestines of a variety of sharks and rays in both freshwater and saltwater globally. Like many Onchoproteocephallideans, _Acanthobothrium_ species are armed with hooks on their scolex (3). 
  
## **Motivation**

  The generation of tapeworm genomes has wide implications, including better understanding of ecosystem biodiversity, cestode taxonomy, and evolutionary patterns, as well as for human and veterinary medicine. Tapeworm biodiversity is an indicator for ecosystem health, so it is important to understand their role. These organisms travel through the food chain in a multi-host life cycle and may impact population levels as well as energy cycling (6,7). However, in order to begin studying and describing these roles and processes, what  species are actually present must be known. Historically, tapeworm taxonomy has mainly used morphological characteristics to define species, but the collaborative project “A survey of tapeworms from vertebrate bowels of the earth” by Caira et al (2017) has focused on obtaining both morphological and genomic data in an effort to reconcile global tapeworm taxonomy with its phylogeny. Understanding their phylogenetic tree and evolutionary history is important for figuring out how they parasitize certain organisms, which has impacts on veterinary and human medicine in addition to ecological and evolutionary studies.
  
  This project is specifically investigating _Acanthobothrium tortum_ as a preliminary genome study for future comparative genome research into the study of tapeworm life history evolution in freshwater and saltwater elasmobranch hosts. _Acanthobothrium_ is one such tapeworm genus in which the worms are found to parasitize elasmobranchs in both freshwater and saltwater. This species was chosen because it is most similar to these other _Acanthobothrium_ species that parasitize both hosts for which genomic data is not yet available. Assembling and annotating this _Acanthobothrium tortum_ genome will provide for easier assembly and annotation of future _Acanthobothrium_ genomes. 
  
 
## **Related Work/Citations**
Our project is an expansion of previous work conducted by the Caira Lab at the University of Connecticut in collaboration with the University of Kansas’ Kirsten Jensen.  In this publication, entitled “Tapeworms from Vertebrate Bowels of the Earth” that was conducted over an eight year period, Caira identifies 4,810 species of tapeworms [1].  The data used in this project was collected as part of this effort to identify intestinal parasites of animals worldwide. 

(1)Webb, Camille; Cabada, Miguel M. Intestinal cestodes, Current Opinion in Infectious Diseases: October 2017 - Volume 30 - Issue 5 - p 504-510
doi: 10.1097/QCO.0000000000000400

(2) Jansen, F., Dorny, P., Trevisan, C. et al. Economic impact of bovine cysticercosis and taeniosis caused by Taenia saginata in Belgium. Parasites Vectors 11, 241 (2018). https://doi.org/10.1186/s13071-018-2804-x

(3) Caira, J. N. and K. Jensen (eds.). 2017. Planetary Biodiversity Inventory (2008–2017): Tapeworms from Vertebrate Bowels of the Earth. University of Kansas, Natural History Museum, Special Publication No. 25, Lawrence, KS, USA, 463 pp.

(4) Caira, J.N., Jensen, K., Healy, C.J., 1999. On the phylogenetic relationships among
tetraphyllidean, lecanicephalidean and diphyllidean tapeworm genera. Syst.
Parasitol. 42, 77–151.

(5) Zaragoza-Tapia, F., Pulido-Flores, G., Gardner, S. L., & Monks, S. (2020). Host relationships and geographic distribution of species of Acanthobothrium Blanchard, 1848 (Onchoproteocephalidea, Onchobothriidae) in elasmobranchs: a metadata analysis. ZooKeys, 940, 1–49. https://doi.org/10.3897/zookeys.940.46352

(6) Gagne, Roderick B., et al. "Parasites as conservation tools." Conservation Biology (2021).

(7) Laferty, K. D., Allesina, S. et al. Parasites in food webs: The ultimate missing links. Ecology Letters 11, 533-546 (2008).


## **Research Goals**
Our initial goal was to assemble the genome of an undescribed _Acanthobothrium tortum_ species and peform genome annotation.  However, as we our project progressed, our objective shifted towards a sole focus on genome assembly.  Part of the motivation for this alternate path was attributed to the high quality of our raw data and the limited knowledge we had in the beginning concerning whether our data had previously been processed.  Thus, we chose to assemble both raw and trimmed reads and compare the quality and completeness of these genome assemblies to each other.  In doing so, we hoped to gain a better understanding of how each assembly program works and which assemblers and aligners will benefit us most in future projects.
 
 
## **Data**
For this project, we used historical data that was prepared, sequenced and de-multiplexed at Kansas University in 2015.  Libraries were prepared using a single 350bp insert and Illumina TruSeq adaptors with the Illumina TruSeq PCR-free library kit.  The libraries were subsequently multi-plexed with four other libraries that were also prepared at KU and sequenced on the HiSeq2500.  Our raw data is de-multiplexed and contains paired end reads that are approximately 100bp in length.

This raw data is organized as zipped fasta files and is stored on UCONN’s Xanadu cluster.  These files can be found here.


## **Workflow/Analysis**
![image](https://user-images.githubusercontent.com/80171724/116919445-4403de80-ac1f-11eb-9790-a130c9ee7b15.png)

  ### **Jellyfish** 
  Jellyfish was used to count k-mer occurrence in order to estimate genome size. The following script was used:
  ```
  module load jellyfish/2.2.6
  jellyfish count -t 30 -C -m 21 -s 100G -o jf21kruh1_out ../../03_Kraken/raw_unclassified_1.fastq ../../03_Kraken/raw_unclassified_2.fastq
  ```
  The complete script is called JF_rawun.sh and can be found here. This creates an output file, which in. this case is called jf21kruh1_out. The following
  command to count the frequency of each k-mer with a length of 21:
  ```
  module load jellyfish/2.2.6
  jellyfish histo -o jf21kruh1_out.histo jf21kruh1_out
  ```
  This .histo file creates plottable results of the frequency of each k-mer with a length of 21. For the raw unclassified reads, that resulted in over 7000
  k-mers. The GenomeScope webserver was used to model the k-mer spectrum, which resulted in the following profile:
  ![image](https://user-images.githubusercontent.com/70581066/117084883-56147880-ad16-11eb-9860-8b0b296ae3cd.png)
  
  With the following estimates:
  ```
  GenomeScope version 1.0
  k = 21
  property                      min               max               
  Heterozygosity                0.55575%          0.561302%         
  Genome Haploid Length         241,887,253 bp    242,072,611 bp    
  Genome Repeat Length          52,807,787 bp     52,848,253 bp     
  Genome Unique Length          189,079,466 bp    189,224,358 bp    
  Model Fit                     97.0743%          99.5966%          
  Read Error Rate               0.231986%         0.231986%  
  ```
  This workflow was repeated with the raw data.
  
  ### **Quality Checks with FastQC**
  We used FastQC to determine the quality of our raw data.  
  
  In our working directory:
  
  ```
  #unzip zipped fastq files
  gunzip BE8G1_R1.fastq.gz
  gunzip BE8G1_R2.fastq.gz
  
  #load fastqc
  module load fastqc/0.11.7
  fastqc BE8G1_R1.fastq
  fastqc BE8G1_R2.fastq
  module unload fastqc/0.11.7
  ```
  
  This gave us an html file for both the forward and reverse reads.
  Below are some of the visuals from the quality check of the reverse raw read:
  
  ![Screen Shot 2021-05-04 at 11 05 52 AM](https://user-images.githubusercontent.com/80171724/117025218-b8df2300-acc8-11eb-9b52-655341c9fd62.png)
  
  While there were no flags that indicate a failure of any of the quality check statistics, there was a warning for per base sequence content:
![Screen Shot 2021-05-04 at 11 09 54 AM](https://user-images.githubusercontent.com/80171724/117025867-4753a480-acc9-11eb-8995-c4c108af1c1c.png)
  
 The circle on the graph above highlights noise that originates from a discrepancy in base call at the 5'end of the sequence.  We were unsure if this was due to aggressive adapter trimming from a pre-processing step or if it was due to library bias, so we decided to trim the reads and perform a quality check on these trimmed sequences as well.


  ### **Trimming with Sickle**
  We used Sickle to trim the 5' and 3' ends of our paired end raw reads and remove any low quality reads.  We kept a minimum read length of 20 basepairs and a minimum average quality score of 20.
  
  ```
  module load sickle/1.33

  sickle pe \
	  -f ../01_raw_reads/BE8G1_R1.fastq \
	  -r ../01_raw_reads/BE8G1_R2.fastq \
	  -t sanger \
	  -o trim_BE8G1_R1.fastq \
	  -p trim_BE8G1_R2.fastq \
	  -s sinlges.fastq \
	  -q 20 \
	  -l 20 

  module unload sickle/1.33
  ```
  
  ### **Quality Checks of trimmed reads with FastQC**
  We then used FastQC to determine the quality of our trimmed reads. 
  ```
  module load fastqc/0.11.7
  fastqc trim_BE8G1_R1.fastq
  fastqc trim_BE8G1_R2.fastq
  module unload fastqc/0.11.7
  ```
  The per base sequence content did not change after trimming: 
  
  ![Screen Shot 2021-05-04 at 11 54 23 AM](https://user-images.githubusercontent.com/80171724/117032489-85ec5d80-accf-11eb-8028-53a958b25db2.png)
  
  Thus, we decided to assemble both the raw and trimmed reads to see if trimming benefited the quality of genome assembly.

  ### **Kraken**
  Kraken was run on both raw reads and trimmed reads in order to screen for potential contaminants. 
  
  Working directory:
  ```
  cestodes-5300/
  ├── kara/
  │   ├── 03_Kraken/
  ```
  Kraken command:
  ```
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
```
	
  The complete script is called kraken_raw.sh. This creates the sequence output, report and a summary report.
  ```
  ├── raw_classified_1.fastq
  ├── raw_classified_2.fastq
  ├── raw_kraken_report.txt
  ├── kraken_raw_general.out
  ├── raw_unlassified_1.fastq
  └── raw_unlassified_2.fastq
  ```
  The Kraken report file allows for identification of the main groups of contamination through the following command: 
  ```
  grep -v "|" raw_kraken_report.txt
  ```
  which gave the following results:
  ```
  d__Bacteria	690865
  d__Eukaryota	595949
  d__Archaea	9751
  d__Viruses	10630
  ```
  When further looking at the full report file after transferring to the desktop, it was somewhat surprising to find that the largest contaminants were human and bacterial, rather than host contamination (elasmobranch).
  Additionally, the .err file will show:
  ```
  37507337 sequences (7576.48 Mbp) processed in 336.862s (6680.6 Kseq/m, 1349.48 Mbp/m).
  1434069 sequences classified (3.82%)
  36073268 sequences unclassified (96.18%)
  ```
  This workflow was repeated for the trimmed reads, for which the full slurm script is found as kraken_trim.sh. The trimmed read kraken_report.txt gave the following results:
  ```
  d__Bacteria	647092
  d__Eukaryota	394742
  d__Archaea	8949
  d__Viruses	9920
  ```
  The .err file gave the following results for the trimmed reads:
  ```
  36413015 sequences (7096.73 Mbp) processed in 180.939s (12074.7 Kseq/m, 2353.30 Mbp/m).
  1182002 sequences classified (3.25%)
  35231013 sequences unclassified (96.75%)
  ```
  
  ### **Assembly**
  
  #### **SPAdes**
  We used the SPAdes assembler to assemble the trimmed, unclassified reads.  We selected SPAdes because it is easy to use and it can take paired-end reads that are in FASTA format as input.  However, SPAdes is not intended for larger genomes and the manual states that for such purposes it can be used at the user's risk.  It is worth mentioning that this genome assembly took six days to run.  We were unable to assemble the raw, unclassified as well as the raw (pre-contaminant screening) reads due to time constraints and limited computational resources
  
  The slurm script for the SPAdes assembly entitled SPAdes.sh:
  
  ```
  #!/bin/bash
#SBATCH --job-name=SPAdes
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=400G
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mail-user=khalia.cain@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##		SPAdes					##
##########################################################

module load SPAdes/3.13.0

spades.py \
	-1 ../../03_kraken/unclassified_1.fastq \
	-2 ../../03_kraken/unclassified_2.fastq \
	-s ../../02_quality_control/sinlges20.fastq \
	--careful \
	--threads 8 \
	--memory 400 \
	-o . 


module unload SPAdes/3.13.0
```

The key output for this assembly is the scaffolds.fasta file.  However, although we did initially have this file, it was shortly misplaced (the error that caused this is still uknown) so we used the assembled_scaffolds.fasta file for all subsequent quality and completeness checks.  This file was located in the misc folder.
  
  #### **MaSuRCA**
 We also performed genome assembly on our four datasets:  raw and pre-Kraken data, raw and unclassified data, trimmed and pre-Kraken data and trimmed and unclassified data using MaSuRCA 3.3.4.  This particular program combines the De Bruijn Graph technique and an Overlap-Layout-Consensus Model. In the Overlap-Layout-Consensus Model regions of overlap are determined then graphed as edges while reads are graphed as nodes.  An algorithm goes through the graph multiple times to determine the best route through the graph and contigs are generated.  We chose MaSuRCA because we were unsure about the amount of processing that was previously performed on our data.  MaSuRCA is unique because it does not need pre-processed reads and can work efficiently with raw reads.  Therefore, if our data was truly raw, this assembler would run better for our raw reads than our trimmed reads.  However, if the assemblies were of similar quality the raw reads were likely already trimmed.
 
 Every MaSuRCA assembly needs a configuration file that contains paramaters for the assembler.  This file will also contain the assembled reads.  Below is the contents of the configuration file for the raw and unclassified dataset:
 
 ```
 #MaSuRCA configuration file
DATA
#Illumina paired end reads supplied as <two-character prefix> <fragment mean> <fragment stdev> <forward_reads> <reverse_reads> 
PE= pe 350 50  ../../03_Kraken/unclassified_1.fastq ../../03_Kraken/unclassified_2.fastq 
END

PARAMETERS
#set this to 1 if your Illumina jumping library reads are shorter than 100bp
EXTEND_JUMP_READS=0
#this is k-mer size for deBruijn graph values between 25 and 127 are supported, auto will compute the optimal size based on the read data and GC content
GRAPH_KMER_SIZE = auto
#set this to 1 for all Illumina-only assemblies
#set this to 1 if you have less than 20x long reads (454, Sanger, Pacbio) and less than 50x CLONE coverage by Illumina, Sanger or 454 mate pairs
#otherwise keep at 0
USE_LINKING_MATES = 0
#specifies whether to run mega-reads correction on the grid
USE_GRID=0
#specifies queue to use when running on the grid MANDATORY
GRID_QUEUE=all.q
#batch size in the amount of long read sequence for each batch on the grid
GRID_BATCH_SIZE=350000000
#coverage by the longest Long reads to use
LHE_COVERAGE=30
#this parameter is useful if you have too many Illumina jumping library mates. Typically set it to 60 for bacteria and 300 for the other organisms 
LIMIT_JUMP_COVERAGE = 300
#these are the additional parameters to Celera Assembler.  do not worry about performance, number or processors or batch sizes -- these are computed automatically. 
#set cgwErrorRate=0.25 for bacteria and 0.1<=cgwErrorRate<=0.15 for other organisms.
CA_PARAMETERS =  cgwErrorRate=0.15
#minimum count k-mers used in error correction 1 means all k-mers are used.  one can increase to 2 if Illumina coverage >100
KMER_COUNT_THRESHOLD = 1
#whether to attempt to close gaps in scaffolds with Illumina data
CLOSE_GAPS=1
#auto-detected number of cpus to use
NUM_THREADS = 8
#this is mandatory jellyfish hash size -- a safe value is estimated_genome_size*estimated_coverage
JF_SIZE = 9500000000
#set this to 1 to use SOAPdenovo contigging/scaffolding module.  Assembly will be worse but will run faster. Useful for very large (>5Gbp) genomes from Illumina-only data
SOAP_ASSEMBLY=0
END
 ```

 
 The full shell script for the MaSuRCA assembly of the raw and unclassified reads is here.
 
 

 ### **Assembly Quality**
 #### **Quast**
 #### **BUSCO**
 #### **Bowtie2**
 #### **Assembler Comparison**
 <img width="468" alt="AssemblyComparison" src="https://user-images.githubusercontent.com/70581066/117086752-7d217900-ad1b-11eb-8165-68871e50a50a.png">

 
 ## **Discussion**
  
    
