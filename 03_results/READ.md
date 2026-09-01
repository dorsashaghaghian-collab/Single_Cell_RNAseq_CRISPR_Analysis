# Results

This directory contains processed outputs generated from the single-cell Perturb-seq analysis workflow.

---

## Figures

Publication-style visualizations including:

- Quality control plots
- PCA and UMAP embeddings
- Perturbation identity visualization
- Differential expression volcano plots
- Hallmark GSEA heatmaps
- AUCell pathway activity maps
- Mechanistic interpretation figures


---

## Objects

Processed Seurat objects used throughout downstream analysis.

Includes:

- Final Seurat object
- gRNA-assigned Seurat object


---

## Differential Expression

Pseudobulk differential expression analysis performed using DESeq2.

Comparisons:

- sgAxl vs control
- sgPrmt1 vs control
- sgRipk1 vs control


---

## Pathway Analysis

Functional interpretation using:

- GO Biological Process enrichment
- Hallmark gene set GSEA
- Normalized enrichment score comparison


---

## Signature Scoring

Single-cell pathway activity estimation using AUCell.

Evaluated biological programs:

- MYC targets
- MTORC1 signaling
- DNA repair
- Interferon response
- Inflammatory response
