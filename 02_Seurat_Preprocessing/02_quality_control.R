library(Seurat)
library(ggplot2)


scRNA <- readRDS(
"PerturbSeq_STARsolo_Seurat_object.rds"
)


# mitochondrial percentage

scRNA[["percent.mt"]] <-
PercentageFeatureSet(
scRNA,
pattern="^mt-"
)


# QC plots

p1 <- VlnPlot(
scRNA,
features="nFeature_RNA"
)


p2 <- VlnPlot(
scRNA,
features="nCount_RNA"
)


p3 <- VlnPlot(
scRNA,
features="percent.mt"
)


ggsave(
"05_Results/QC/QC_violin.png",
width=8,
height=6
)


# Feature relationship

FeatureScatter(
scRNA,
feature1="nCount_RNA",
feature2="nFeature_RNA"
)
