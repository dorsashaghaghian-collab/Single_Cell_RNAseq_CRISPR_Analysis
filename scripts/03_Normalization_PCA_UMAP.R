scRNA <- NormalizeData(scRNA)

scRNA <- FindVariableFeatures(
scRNA,
selection.method="vst",
nfeatures=2000
)


scRNA <- ScaleData(scRNA)


scRNA <- RunPCA(
scRNA,
features=VariableFeatures(scRNA)
)


ElbowPlot(
scRNA,
ndims=50
)


scRNA <- RunUMAP(
scRNA,
dims=1:20
)


saveRDS(
scRNA,
"Seurat_objects/PCA_UMAP.rds"
)
