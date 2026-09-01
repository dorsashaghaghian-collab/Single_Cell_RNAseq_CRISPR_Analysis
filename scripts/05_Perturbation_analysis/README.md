# Perturbation Analysis Scripts

This directory contains downstream computational analyses performed after Seurat preprocessing.

## Included analyses

### gRNA validation
Validation of CRISPR perturbation identity.

### Pseudobulk differential expression
DESeq2-based comparison of:

- sgAxl vs control
- sgPrmt1 vs control
- sgRipk1 vs control

### Pathway analysis

Includes:

- GO enrichment
- Hallmark GSEA
- NES pathway comparison

### Single-cell signature scoring

AUCell-based activity scoring of biological programs:

- MYC signaling
- mTORC1 signaling
- DNA repair
- Interferon response
- Inflammatory response

### Visualization

Publication-style figures generation.
