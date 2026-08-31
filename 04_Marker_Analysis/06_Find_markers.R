markers <- FindAllMarkers(
scRNA,
only.pos=TRUE,
min.pct=0.25,
logfc.threshold=0.25
)


top_markers <-
markers %>%
group_by(cluster) %>%
slice_max(
order_by=avg_log2FC,
n=10
)


write.csv(
top_markers,
"05_Results/Markers/top10_markers.csv"
)
