# RNA-seq DESeq2 Results Summary

## Dataset

This project used the `airway` dataset from Bioconductor. The dataset contains RNA-seq read counts from human airway smooth muscle cells treated with dexamethasone.

## Analysis Method

Differential expression analysis was performed using DESeq2 in R.

The comparison used in this project was:

| Condition | Description |
|---|---|
| Treated | Dexamethasone-treated samples |
| Untreated | Control samples without dexamethasone treatment |

Untreated samples were used as the reference group, and treated samples were compared against untreated samples.

## Analysis Workflow

The analysis included the following steps:

1. Loaded RNA-seq count data from the airway dataset
2. Defined treated and untreated sample groups
3. Created a DESeq2 dataset object
4. Filtered low-count genes
5. Ran DESeq2 differential expression analysis
6. Extracted treated vs untreated results
7. Identified significant genes using adjusted p-value
8. Generated PCA, MA, and volcano plots
9. Exported the results table

## Results

| Metric | Value |
|---|---|
| Total genes tested | 22,008 |
| Significant genes with adjusted p-value < 0.05 | 2,712 |

## Interpretation

After filtering low-count genes, 22,008 genes were tested for differential expression between dexamethasone-treated and untreated airway smooth muscle cell samples.

Using an adjusted p-value cutoff of 0.05, 2,712 genes were identified as significantly differentially expressed.

This suggests that dexamethasone treatment is associated with measurable changes in gene expression in the airway dataset.

Positive log2 fold change values indicate genes with higher expression in treated samples, while negative log2 fold change values indicate genes with lower expression in treated samples.

## Output Files

| Output | Description |
|---|---|
| `top_differentially_expressed_genes.csv` | DESeq2 results table sorted by adjusted p-value |
| `plots/pca_plot.png` | PCA plot showing sample-level expression patterns |
| `plots/ma_plot.png` | MA plot showing log2 fold changes across expression levels |
| `plots/volcano_plot.png` | Volcano plot showing significance and fold change |

## Conclusion

This project demonstrates a basic RNA-seq differential expression analysis workflow using R, Bioconductor, and DESeq2.

The analysis identified genes that showed statistically significant expression differences between dexamethasone-treated and untreated samples.# RNA-seq DESeq2 Results Summary

## Dataset

This project used the `airway` dataset from Bioconductor. The dataset contains RNA-seq read counts from human airway smooth muscle cells treated with dexamethasone.

## Analysis Method

Differential expression analysis was performed using DESeq2 in R.

The comparison used in this project was:

| Condition | Description |
|---|---|
| Treated | Dexamethasone-treated samples |
| Untreated | Control samples without dexamethasone treatment |

Untreated samples were used as the reference group, and treated samples were compared against untreated samples.

## Analysis Workflow

The analysis included the following steps:

1. Loaded RNA-seq count data from the airway dataset
2. Defined treated and untreated sample groups
3. Created a DESeq2 dataset object
4. Filtered low-count genes
5. Ran DESeq2 differential expression analysis
6. Extracted treated vs untreated results
7. Identified significant genes using adjusted p-value
8. Generated PCA, MA, and volcano plots
9. Exported the results table

## Results

| Metric | Value |
|---|---|
| Total genes tested | 22,008 |
| Significant genes with adjusted p-value < 0.05 | 2,712 |

## Interpretation

After filtering low-count genes, 22,008 genes were tested for differential expression between dexamethasone-treated and untreated airway smooth muscle cell samples.

Using an adjusted p-value cutoff of 0.05, 2,712 genes were identified as significantly differentially expressed.

This suggests that dexamethasone treatment is associated with measurable changes in gene expression in the airway dataset.

Positive log2 fold change values indicate genes with higher expression in treated samples, while negative log2 fold change values indicate genes with lower expression in treated samples.

## Output Files

| Output | Description |
|---|---|
| `top_differentially_expressed_genes.csv` | DESeq2 results table sorted by adjusted p-value |
| `plots/pca_plot.png` | PCA plot showing sample-level expression patterns |
| `plots/ma_plot.png` | MA plot showing log2 fold changes across expression levels |
| `plots/volcano_plot.png` | Volcano plot showing significance and fold change |

## Conclusion

This project demonstrates a basic RNA-seq differential expression analysis workflow using R, Bioconductor, and DESeq2.

The analysis identified genes that showed statistically significant expression differences between dexamethasone-treated and untreated samples.