############################################################
# Step 02:
# Quality control and normalization
############################################################


library(Seurat)
library(ggplot2)


scRNA <- readRDS(
"results/Seurat_object_initial.rds"
)


############################################################
# Mitochondrial percentage
############################################################

scRNA[["percent.mt"]] <-
PercentageFeatureSet(
scRNA,
pattern="^mt-"
)


############################################################
# QC visualization
############################################################


pdf(
"results/figures/QC_violin.pdf",
width=10,
height=5
)


VlnPlot(
scRNA,
features=c(
"nFeature_RNA",
"nCount_RNA",
"percent.mt"
),
ncol=3
)


dev.off()



############################################################
# Filtering
############################################################

scRNA <- subset(
scRNA,
subset =
nFeature_RNA > 200 &
nFeature_RNA < 6000 &
percent.mt < 20
)



############################################################
# Normalization
############################################################

scRNA <- NormalizeData(scRNA)

scRNA <- FindVariableFeatures(
scRNA,
selection.method="vst",
nfeatures=2000
)


saveRDS(
scRNA,
"results/Seurat_after_QC.rds"
)
