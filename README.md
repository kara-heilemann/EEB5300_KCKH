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
  
  Thus, we decided to assemble both the raw and trimmed reads to see if trimming benefited the quality of assembly.

  ### **Kraken**
  
 


  
    
