# RNA-seq Analysis Plots

This folder contains plots generated from the RNA-seq differential expression analysis using DESeq2.

The plots help visualize sample relationships, expression changes, and statistically significant genes.

## Files Included

| Plot | Description |
|---|---|
| `pca_plot.png` | Principal Component Analysis plot of RNA-seq samples |
| `ma_plot.png` | MA plot showing average expression and log2 fold change |
| `volcano_plot.png` | Volcano plot showing statistical significance and fold change |

## Metadata Used in Plots

The PCA plot uses the `dex` metadata column to group samples by treatment condition.

| Metadata Column | Meaning |
|---|---|
| `dex` | Treatment condition: dexamethasone-treated or untreated |

This helps show whether treated and untreated samples differ in their overall gene expression patterns.

## PCA Plot

The PCA plot is used to examine overall similarity and variation among RNA-seq samples.

In this project, the PCA plot helps assess whether dexamethasone-treated and untreated samples show different overall gene expression patterns.

Samples that appear close together on the PCA plot have more similar expression profiles. Samples that appear farther apart show greater differences in expression patterns.

## MA Plot

The MA plot shows the relationship between average gene expression and log2 fold change.

The x-axis represents average expression level, while the y-axis represents log2 fold change between treated and untreated samples.

Genes above zero on the y-axis have higher expression in treated samples, while genes below zero have lower expression in treated samples.

This plot helps visualize how gene expression changes are distributed across lowly and highly expressed genes.

## Volcano Plot

The volcano plot combines fold change and statistical significance.

The x-axis shows log2 fold change, and the y-axis shows the negative log10 adjusted p-value.

Genes farther to the right are more highly expressed in treated samples. Genes farther to the left are more highly expressed in untreated samples. Genes higher on the plot are more statistically significant.

This plot helps identify genes with both strong expression changes and statistical significance.

## Interpretation Summary

Together, these plots support the DESeq2 analysis by showing sample-level variation, gene-level expression changes, and statistically significant differentially expressed genes.

The plots provide visual evidence that dexamethasone treatment is associated with gene expression changes in the airway dataset.