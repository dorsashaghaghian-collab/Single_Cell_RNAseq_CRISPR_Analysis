library(Seurat)
library(Matrix)
library(dplyr)


data_dir <- "STARsolo_output"


counts <- ReadMtx(
  mtx = "matrix.mtx",
  features = "features.tsv",
  cells = "barcodes.tsv"
)


scRNA <- CreateSeuratObject(
  counts = counts,
  project = "CRISPR_PerturbSeq",
  min.cells = 3,
  min.features = 200
)


saveRDS(
scRNA,
"Seurat_objects/raw_object.rds"
)
