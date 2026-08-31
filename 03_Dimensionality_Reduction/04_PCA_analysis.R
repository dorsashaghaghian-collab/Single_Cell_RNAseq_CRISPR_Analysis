library(Seurat)
library(ggplot2)


scRNA <- readRDS(
"QC_filtered.rds"
)


scRNA <- FindVariableFeatures(
scRNA,
selection.method="vst",
nfeatures=2000
)


top10 <- head(
VariableFeatures(scRNA),
10
)


VariableFeaturePlot(scRNA)


LabelPoints(
plot=VariableFeaturePlot(scRNA),
points=top10,
repel=TRUE
)


scRNA <- ScaleData(scRNA)


scRNA <- RunPCA(
scRNA,
features=
VariableFeatures(scRNA)
)


print(
scRNA[["pca"]],
dims=1:5,
nfeatures=10
)


ElbowPlot(
scRNA,
ndims=50
)


ggsave(
"05_Results/PCA/elbow_plot.png"
)
