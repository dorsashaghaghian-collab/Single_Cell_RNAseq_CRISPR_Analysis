# Analysis Workflow


## 1. Raw data processing

FASTQ files were obtained from public sequencing repository.

FASTQ structure:

R1:
barcode/index read

R2:
cell barcode + UMI related read

R3:
transcript read


## 2. STARsolo

STARsolo was used for:

- barcode processing
- UMI counting
- gene expression quantification


## 3. Seurat

Seurat workflow:

- Create Seurat object
- NormalizeData()
- FindVariableFeatures()
- ScaleData()
- RunPCA()
- FindNeighbors()
- FindClusters()
- RunUMAP()


## 4. Outputs

Generated:

- QC plots
- PCA plots
- UMAP visualization
- Marker gene tables
