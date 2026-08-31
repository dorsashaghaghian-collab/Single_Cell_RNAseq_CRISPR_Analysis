# Single-Cell RNA-seq Analysis of CRISPR Perturbation Dataset

## Project Overview

This project implements an end-to-end single-cell RNA sequencing workflow for analyzing CRISPR perturbation experiments.

The main research question:

**How do CRISPR-mediated genetic perturbations reshape cellular states and transcriptional programs in cancer cells at single-cell resolution?**


## Dataset

Dataset:
GSM6243407

Organism:
Mus musculus

Technology:
Single-cell RNA sequencing

Sequencing platform:
Illumina


## Workflow

FASTQ
↓
FASTQC / MultiQC
↓
FASTQ structure identification
↓
10x barcode and UMI characterization
↓
STARsolo alignment
↓
Cell × Gene expression matrix
↓
Seurat analysis
↓
Quality control
↓
Normalization
↓
PCA
↓
UMAP
↓
Clustering
↓
Marker gene identification


## Tools

- STARsolo
- Seurat
- R
- ggplot2
- PCA
- UMAP
- Louvain clustering


## Results

### Alignment summary

Input reads:
42,915,206

Uniquely mapped reads:
30,485,273

Unique mapping rate:
71.04%

## Key Biological Observations

PCA and UMAP analysis revealed distinct transcriptional states among cancer cells.

Major transcriptional programs identified included:

- interferon response signatures
- proliferation-associated states
- extracellular matrix associated programs
- stress-response signatures


Cluster-specific marker analysis was performed using FindAllMarkers().


## Single-cell analysis

Cells retained:

878 cells

Genes detected:

19,641

## Analysis Summary

Raw sequencing data were processed using STARsolo 
to generate a cell-by-gene expression matrix.

The dataset was evaluated through:

- sequencing quality assessment
- barcode/UMI structure inspection
- gene expression quantification
- single-cell quality control
- normalization
- highly variable gene selection
- PCA-based dimensionality reduction
- UMAP visualization
- graph-based clustering
- marker gene identification


Final dataset:

Cells analyzed: 878

Genes detected: 19,641

Clusters identified: 4

Resolution:
0.5

Dimensionality:
20 PCs

Generated outputs:

- QC visualization
- PCA analysis
- UMAP clustering
- Cluster marker identification


## Important note

Although the dataset was originally associated with CRISPR perturbation experiments, the processed STARsolo feature matrix contained only:

Gene Expression

No CRISPR Guide Capture features were detected.

Therefore, direct guide RNA assignment was not performed in this dataset.


Future work:

A Perturb-seq dataset containing guide RNA capture features will be integrated for:

- gRNA assignment
- perturbation labeling
- perturbation-specific differential expression
- pathway analysis
## Dataset Information

Dataset:
Single-cell CRISPR immune screens reveal immunological roles of tumor intrinsic factors

Organism:
Mus musculus

Platform:
Illumina sequencing

Data type:
Single-cell RNA sequencing with CRISPR perturbation information

Samples analyzed:
- SRR19654344
- SRR19654345
- SRR19654346
- SRR19654347
