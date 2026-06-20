# RNA-seq Differential Expression Analysis using R and DESeq2

This project demonstrates a beginner-friendly RNA-seq differential gene expression analysis workflow using R, Bioconductor, and DESeq2.

## Project Aim

The aim of this project is to analyze RNA-seq count data and identify genes that show differential expression between treated and untreated samples.

## Dataset

This project uses the `airway` dataset from Bioconductor. The dataset contains RNA-seq read counts from human airway smooth muscle cells treated with dexamethasone.

## Tools and Packages Used

- R
- Bioconductor
- DESeq2
- airway
- ggplot2

## Analysis Workflow

The project includes the following steps:

1. Load RNA-seq count data
2. Prepare sample metadata
3. Create a DESeq2 dataset object
4. Run differential expression analysis
5. Generate normalized counts
6. Create PCA plot
7. Create MA plot
8. Create volcano plot
9. Export top differentially expressed genes
10. Summarize biological interpretation

## Files Included

| File | Description |
|---|---|
| `deseq2_airway_analysis.R` | R script for RNA-seq differential expression analysis |
| `results_summary.md` | Summary of analysis results and interpretation |
| `top_differentially_expressed_genes.csv` | Table of top differentially expressed genes generated after running the script |
| `plots/pca_plot.png` | PCA plot generated from transformed count data |
| `plots/ma_plot.png` | MA plot showing log2 fold changes |
| `plots/volcano_plot.png` | Volcano plot showing significance and fold change |

## Skills Practiced

- RNA-seq count data analysis
- Differential gene expression analysis
- R programming
- Bioconductor workflow
- DESeq2 analysis
- PCA visualization
- MA plot interpretation
- Volcano plot interpretation
- GitHub project documentation

## Learning Outcome

This project helped me understand how RNA-seq count data can be analyzed using DESeq2 to identify genes that respond to treatment conditions.