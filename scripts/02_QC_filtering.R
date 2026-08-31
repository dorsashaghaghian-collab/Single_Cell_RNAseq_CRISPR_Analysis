library(Seurat)
library(ggplot2)


scRNA <- readRDS(
"Seurat_objects/raw_object.rds"
)


scRNA[["percent.mt"]] <- PercentageFeatureSet(
scRNA,
pattern="^mt-"
)


VlnPlot(
scRNA,
features=c(
"nFeature_RNA",
"nCount_RNA",
"percent.mt"
)
)


scRNA <- subset(
scRNA,
subset=
nFeature_RNA > 200 &
nFeature_RNA < 6000 &
percent.mt < 20
)


saveRDS(
scRNA,
"Seurat_objects/QC_filtered.rds"
)
