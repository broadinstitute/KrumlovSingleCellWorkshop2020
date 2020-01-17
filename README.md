# Introduction

## Get Course Material

You can pull the course content to your computer by running the command below. This will bring all the Rmarkdown files for you to run.

```
git clone https://github.com/broadinstitute/KrumlovSingleCellWorkshop2020.git
cd KrumlovSingleCellWorkshop2020
```


## Run Docker

Same command as above but add the option bash at the end to access the ternimal in the docker container.

```
docker run --rm -ti -v `pwd`:/home/rstudio -e DISABLE_AUTH=true -p 8787:8787 kdgosik/krumlov2020
```

**OR**

```
./run_docker.sh
```

After running the docker command navigate to your browser and go to [http://localhost:8787/](http://localhost:8787/).  This will open up Rstudio in your browser and have the necessary R packages installed needed for the course.


## Course Overview

In recent years single cell RNA-seq (scRNA-seq) has become widely used for transcriptome analysis in many areas of biology. In contrast to bulk RNA-seq, scRNA-seq provides quantitative measurements of the expression of every gene in a single cell. However, to analyze scRNA-seq data, novel methods are required and some of the underlying assumptions for the methods developed for bulk RNA-seq experiments are no longer valid. In this course we will cover all steps of the scRNA-seq processing, starting from the raw reads coming off the sequencer. The course includes common analysis strategies, using state-of-the-art methods and we also discuss the central biological questions that can be addressed using scRNA-seq.


## Targeted Audience & Assumed Background

This course is aimed at researchers and technical workers who are or will be analyzing scRNA-seq data. The material is suitable both for experimentalists who want to learn more about data-analysis as well as computational biologists who want to learn about scRNASeq methods. Examples demonstrated in this course can be applied to any experimental protocol or biological system.

The requirements for this course are:
  1.  Working knowledge of unix (managing files, running programs)
  2. Programming experience in R (writing a function, basic I/O operations, variable types, using packages). Bioconductor  experience is a plus. 
  3. Familiarity with next-generation sequencing data and its analyses (using alignment and quantification tools for bulk sequencing data)


## Course Format

The course will be delivered over the course of five days. Each day will include a lecture and laboratory component. The lecture will introduce the topics of discussion and the laboratory sessions will be focused on practical hands-on analysis of scRNA-seq data. These sessions will involve a combination of both mirroring exercises with the instructor to demonstrate a skill as well as applying these skills on your own to complete individual exercises. After and during each exercise, interpretation of results will be discussed as a group. Computing will be done using a combination of tools installed on the attendees laptop computer and web resources accessed via web browser.



## Session Content

### Introduction

  - Overview of course
  - General introduction: HCA/KCO overview
  - Comparison of Bulk and single cell RNA-Seq
  - Overview of available scRNA-seq technologies (10x) and experimental protocols
  - scRNA-Seq experimental design and analysis workflow?

### Transcriptome Quantification

  - Read & UMI counting (Kallisto alignment-free pseudocounts as well), how RSEM works (length dependence, sequencing depth, multimapping reads), CellRanger (dropest), bustools
  - 10x barcode structure and links to Perturb-seq
  - Gene length & coverage 
  - Gene expression units (count data Smart-seq2 counts or 10x UMIs vs expression data)
  - Some R overview slides, https://r4ds.had.co.nz/
  
  
### Expression QC and Normalization

  - What CellRanger does for quality filtering
  - PBMC data
  - Normalisation methods https://www.nature.com/articles/nmeth.4292
  - Doublets, empty droplets
  - Barcode swapping
  - Regression with technical covariates
  - What about imputation?


### Data Wrangling scRNAseq

  - Data structures and file formats for single-cell data
  - Quality control of cells and genes (doublets, ambient, empty drops)
  - Data exploration: violin plots…
  - Introducing Seurat object
    - Genes
    - House keeping genes
    - Mitochondrial genes (never used these ones)
    - Filter - Do we remove both cells and genes here?
    - Normalize (introduce more options, other than log transform?)
    - Find variable genes (Is it a first reduction? Why the binning?)
    - Scaling 
    - Regression
    - Heatmap of desired genes?
    - Sigantures? 


### Identifying Cell Populations

  - Feature selection
  - Dimensionality reduction
  - Clustering and assigning identity (Louvain, NMF, topic models, variational autoencoder)
  - Differential expression tests
  
  
### Feature Selection and Cluster Analysis

  - Parameters and clustering 
  - Comparison of feature selection methods