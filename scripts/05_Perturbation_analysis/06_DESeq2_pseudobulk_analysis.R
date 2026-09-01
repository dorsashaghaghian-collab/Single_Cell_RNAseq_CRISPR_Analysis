############################################################
# Pseudobulk Differential Expression Analysis
############################################################

library(DESeq2)
library(Seurat)
library(dplyr)


# Load counts and metadata

obj <- readRDS(
"../03_results/Objects/PerturbSeq_STARsolo_gRNA_assigned_Seurat.rds"
)


# Aggregate counts by perturbation

# Axl KO vs Control
# Prmt1 KO vs Control
# Ripk1 KO vs Control


# DESeq2 workflow:

# 1. Create pseudobulk count matrix
# 2. Build DESeqDataSet
# 3. Differential expression testing
# 4. Export significant genes


# Results saved:
# DESeq2_Axl_significant_DEG.csv
# DESeq2_Prmt1_significant_DEG.csv
# DESeq2_Ripk1_significant_DEG.csv
