############################################################
# Single-cell RNA-seq CRISPR Perturbation Analysis
# Step 01: STARsolo output preparation
#
# Purpose:
# Import STARsolo generated matrices
# Create initial Seurat object
############################################################


library(Seurat)
library(Matrix)


project_dir <- "."

data_dir <- "STARsolo_output"


############################################################
# Input files
############################################################

matrix_file <- paste0(
data_dir,
"/RNA STARSolo_ Matrix Gene Counts filtered.mtx"
)


barcode_file <- paste0(
data_dir,
"/RNA STARSolo_ Barcodes filtered.tsv"
)


feature_file <- paste0(
data_dir,
"/RNA STARSolo_ Genes filtered.tsv"
)


############################################################
# Read matrices
############################################################

counts <- ReadMtx(
 mtx = matrix_file,
 features = feature_file,
 cells = barcode_file
)


############################################################
# Create Seurat object
############################################################

scRNA <- CreateSeuratObject(
 counts = counts,
 project = "CRISPR_PerturbSeq",
 min.cells = 3,
 min.features = 200
)


saveRDS(
 scRNA,
 "results/Seurat_object_initial.rds"
)
