############################################################
# Step 03:
# PCA UMAP clustering
############################################################


library(Seurat)


scRNA <- readRDS(
"results/Seurat_after_QC.rds"
)


scRNA <- ScaleData(scRNA)


scRNA <- RunPCA(
scRNA,
features=VariableFeatures(scRNA)
)


pdf(
"results/figures/PCA_ElbowPlot.pdf"
)

ElbowPlot(
scRNA,
ndims=50
)

dev.off()



scRNA <- FindNeighbors(
scRNA,
dims=1:20
)


scRNA <- FindClusters(
scRNA,
resolution=0.5
)



scRNA <- RunUMAP(
scRNA,
dims=1:20
)


pdf(
"results/figures/UMAP_clusters.pdf"
)


DimPlot(
scRNA,
reduction="umap",
label=TRUE
)


dev.off()


saveRDS(
scRNA,
"results/Seurat_final_clustered.rds"
)
