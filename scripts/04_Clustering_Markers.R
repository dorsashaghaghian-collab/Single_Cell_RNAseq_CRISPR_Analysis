scRNA <- FindNeighbors(
scRNA,
dims=1:20
)


scRNA <- FindClusters(
scRNA,
resolution=0.5
)


DimPlot(
scRNA,
label=TRUE
)


markers <- FindAllMarkers(
scRNA,
only.pos=TRUE
)


write.csv(
markers,
"results/cluster_markers.csv"
)
