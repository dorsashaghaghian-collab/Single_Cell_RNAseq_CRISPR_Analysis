############################################################
# AUCell Single-cell Signature Scoring
############################################################

library(Seurat)
library(AUCell)


# Load normalized expression matrix

obj <- readRDS(
"../03_results/Objects/PerturbSeq_STARsolo_gRNA_assigned_Seurat.rds"
)


# Build gene rankings

# Calculate pathway activity scores

# Signatures:

# MYC targets
# MTORC1 signaling
# DNA repair
# Interferon response
# Inflammatory response


# Add AUCell scores to Seurat metadata


# Export:

# AUCell_signature_activity_matrix.csv
# AUCell pathway figures
