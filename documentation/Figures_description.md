# Figures Description

This document summarizes the main figures generated during the Perturb-seq analysis workflow.

---

# Figure 1 — Overall Perturb-seq Workflow and Cellular Landscape

## Final_UMAP_gRNA.png

This figure shows the cellular landscape after single-cell processing and CRISPR guide assignment.

Cells are visualized using UMAP and colored according to assigned perturbation identity.

Major perturbation groups:

- sgAxl
- sgPrmt1
- sgRipk1
- Non-targeting controls

This visualization confirms successful separation and representation of perturbation groups.

---

# Figure 2 — Quality Control and Single-cell Processing

## QC Figures

Included analyses:

- Number of detected genes per cell
- Total RNA counts
- Mitochondrial RNA percentage
- QC distributions before and after filtering


These metrics demonstrate the quality of the analyzed single-cell dataset.

---

# Figure 3 — Perturbation Validation

## gRNA_cell_distribution.png

Shows the distribution of assigned CRISPR guides across analyzed cells.


## gRNA_validation_DotPlot.png

Displays guide-associated feature expression supporting perturbation assignment.

---

# Figure 4 — Differential Expression Landscape

## Final_DE_Volcano_panel.png

Volcano plots summarize perturbation-specific transcriptional changes identified using pseudobulk DESeq2.

Comparisons:

- sgAxl vs control
- sgPrmt1 vs control
- sgRipk1 vs control


Highlighted genes represent statistically significant transcriptional responses.

---

# Figure 5 — Functional Enrichment Analysis

## GO enrichment plots

GO Biological Process enrichment was performed using clusterProfiler.

These plots summarize biological processes affected by each perturbation.

---

# Figure 6 — Hallmark Pathway Remodeling

## Final_GSEA_NES_heatmap.png

Normalized enrichment score (NES) comparison across perturbations.

Major pathway signatures:

Axl perturbation:

- MYC targets
- mTORC1 signaling
- DNA repair


Prmt1 perturbation:

- E2F targets
- MYC programs
- oxidative stress response


Ripk1 perturbation:

- interferon signaling
- inflammatory pathways

---

# Figure 7 — Single-cell Pathway Activity Scoring

## AUCell_signature_heatmap.png

AUCell was used to quantify pathway activity at single-cell resolution.

Analyzed signatures:

- MYC targets
- mTORC1 signaling
- DNA repair
- Interferon alpha response
- Interferon gamma response
- Inflammatory response


This analysis connects pathway-level changes with individual cellular states.

---

# Figure 8 — Mechanistic Signature Remodeling

## Final_Mechanistic_heatmap.png

Integrated pathway activity scores summarize perturbation-specific molecular states.

The analysis highlights:

- Growth-associated remodeling
- Stress adaptation programs
- Immune activation states

---

# Figure 9 — Integrated Perturbation Model

## Figure1_Final_PerturbSeq_summary.png

Final summary figure integrating:

- Computational workflow
- Perturbation identity
- Differential expression
- Pathway enrichment
- Signature activity

This figure provides a high-level overview of how genetic perturbations reshape transcriptional states.
