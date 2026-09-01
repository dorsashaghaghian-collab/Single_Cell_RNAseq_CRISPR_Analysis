# Analysis Scripts

This directory contains the computational workflow scripts used for the single-cell Perturb-seq analysis.

The pipeline includes raw sequencing inspection, STARsolo preprocessing, Seurat-based single-cell analysis, dimensionality reduction, clustering, marker identification, and downstream visualization.

---

# Workflow Overview

FASTQ files

↓

STARsolo preprocessing

↓

Gene expression matrix generation

↓

Seurat object creation

↓

Quality control and normalization

↓

PCA and UMAP dimensionality reduction

↓

Cell clustering

↓

Marker gene identification

↓

Downstream perturbation analysis


---

# Script Description


## 01. Input processing and Seurat object generation

### `01_fastq_inspection.py`

Initial inspection of sequencing files and basic FASTQ quality assessment.


### `01_STARsolo_input_processing.R`

Preparation of STARsolo-derived expression matrices for downstream single-cell analysis.


### `01_Create_Seurat_Object.R`

Creation of Seurat objects from STARsolo outputs.


---

# 02. Quality control and normalization


### `02_QC_filtering.R`

Performs:

- mitochondrial content calculation
- feature and count filtering
- removal of low-quality cells


### `02_QC_and_normalization.R`

Performs:

- normalization
- variable feature identification
- scaling


---

# 03. Dimensionality reduction and clustering


### `03_Normalization_PCA_UMAP.R`

Performs:

- PCA analysis
- dimensionality reduction
- UMAP visualization


### `03_dimensionality_reduction_clustering.R`

Performs:

- neighbor graph construction
- Louvain clustering
- cluster visualization


---

# 04. Marker analysis


### `04_Clustering_Markers.R`

Identification of cluster-specific marker genes using Seurat.


### `04_marker_analysis.R`

Downstream marker visualization and interpretation.


---

# Software

Main packages:

- Seurat
- ggplot2
- dplyr
- patchwork
- Matrix


# Reproducibility

Scripts are numbered according to execution order.

Run scripts sequentially from 01 to 04 to reproduce the single-cell preprocessing workflow.
