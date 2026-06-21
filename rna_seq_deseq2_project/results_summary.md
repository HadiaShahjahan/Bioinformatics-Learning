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

## Analysis Output

The R script generates the following outputs:

| Output | Description |
|---|---|
| `top_differentially_expressed_genes.csv` | Table of genes ranked by adjusted p-value |
| `plots/pca_plot.png` | PCA plot showing sample clustering |
| `plots/ma_plot.png` | MA plot showing expression changes |
| `plots/volcano_plot.png` | Volcano plot showing significant genes |

## Results

| Metric | Value |
|---|---|
| Total genes tested | 22008 |
| Significant genes with adjusted p-value < 0.05 | 2712 |

## Interpretation

The analysis compares gene expression between dexamethasone-treated and untreated samples.

Genes with low adjusted p-values are considered statistically significant. Positive log2 fold change values indicate higher expression in treated samples, while negative log2 fold change values indicate lower expression in treated samples.

## Conclusion

This project demonstrates a basic RNA-seq differential expression analysis workflow using R, Bioconductor, and DESeq2.
