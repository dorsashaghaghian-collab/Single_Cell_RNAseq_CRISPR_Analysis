library(Seurat)


scRNA <- readRDS(
"results/Seurat_final_clustered.rds"
)


markers <- FindAllMarkers(
scRNA,
only.pos=TRUE,
min.pct=0.25,
logfc.threshold=0.25
)


write.csv(
markers,
"results/tables/cluster_markers.csv",
row.names=FALSE
)
