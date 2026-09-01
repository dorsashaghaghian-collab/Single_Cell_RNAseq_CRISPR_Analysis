############################################################
# gRNA Assignment Validation
# Single-cell Perturb-seq Analysis
############################################################

library(Seurat)
library(ggplot2)
library(dplyr)


# Load Seurat object
obj <- readRDS(
"../03_results/Objects/PerturbSeq_STARsolo_gRNA_assigned_Seurat.rds"
)


# Inspect perturbation distribution

table(obj$gRNA)


# Visualize perturbation identity

p <- DimPlot(
    obj,
    reduction="umap",
    group.by="gRNA",
    label=TRUE
)

ggsave(
"../03_results/Figures/gRNA_validation_UMAP.png",
p,
width=8,
height=6,
dpi=300
)
