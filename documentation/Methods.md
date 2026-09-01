# Methods

## Overview

This project implements an end-to-end single-cell Perturb-seq analysis workflow to investigate transcriptional consequences of CRISPR-mediated genetic perturbations.

The workflow integrates raw sequencing processing, single-cell quality control, perturbation assignment, differential expression analysis, pathway enrichment, and functional state scoring.

---

# 1. STARsolo Processing

Raw FASTQ files were processed using STARsolo to generate gene-cell expression matrices.

Main steps:

- Genome alignment
- Gene expression quantification
- Barcode filtering
- UMI counting
- CRISPR guide feature processing

Output:

- Gene expression matrix
- Barcode information
- Feature annotations

---

# 2. Single-cell Processing with Seurat

Generated matrices were imported into Seurat.

Quality control included:

- Number of detected genes per cell
- Total UMI counts
- Mitochondrial RNA percentage

Cells were filtered based on quality metrics before downstream analysis.

Normalization:

- Log normalization
- Identification of highly variable genes
- Scaling
- PCA dimensional reduction

---

# 3. Dimensional Reduction and Clustering

Principal component analysis (PCA) was performed for dimensionality reduction.

UMAP was generated for visualization of:

- Cell clusters
- Perturbation identity
- gRNA distribution

---

# 4. gRNA Assignment

CRISPR guide identities were assigned using STARsolo CRISPR feature counts.

Detected perturbations:

- sgAxl
- sgPrmt1
- sgRipk1
- sgNC1
- sgNC2

Assignment quality was evaluated using:

- gRNA distribution
- Feature expression
- Perturbation-specific visualization

---

# 5. Differential Expression Analysis

Perturbation effects were analyzed using pseudobulk differential expression.

Method:

- Aggregation of cells according to perturbation identity
- DESeq2 statistical testing

Comparisons:

- sgAxl vs control
- sgPrmt1 vs control
- sgRipk1 vs control

Outputs:

- Differentially expressed genes
- log2 fold changes
- adjusted p-values

---

# 6. Functional Enrichment Analysis

Gene ontology enrichment was performed using clusterProfiler.

Analyzed categories:

- Biological Process
- Pathway-associated gene sets

---

# 7. Gene Set Enrichment Analysis

Hallmark pathway enrichment was performed using ranked gene lists.

Outputs:

- Normalized enrichment scores (NES)
- Significant pathway identification
- Cross-perturbation pathway comparison

---

# 8. AUCell Signature Scoring

Single-cell pathway activity was quantified using AUCell.

Selected signatures:

- MYC targets
- mTORC1 signaling
- DNA repair
- Interferon alpha response
- Interferon gamma response
- Inflammatory response

AUCell scores were integrated into Seurat metadata for visualization.

---

# 9. Mechanistic Interpretation

Perturbation-specific transcriptional programs were summarized using pathway activity signatures.

Major biological themes:

- Growth and proliferation regulation
- Stress response
- Immune activation
- Metabolic remodeling

---

# Software

Main packages:

- STARsolo
- Seurat
- DESeq2
- clusterProfiler
- enrichplot
- AUCell
- ggplot2
- pheatmap
- patchwork
