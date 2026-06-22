# RNA-seq Differential Expression Analysis using R and DESeq2

This project demonstrates a beginner-friendly RNA-seq differential expression analysis workflow using R, Bioconductor, and DESeq2.

The analysis uses the `airway` dataset to compare gene expression between dexamethasone-treated and untreated human airway smooth muscle cell samples.

## Project Aim

The aim of this project is to analyze RNA-seq count data and identify genes that show statistically significant differential expression between treated and untreated samples.

## Dataset

This project uses the `airway` dataset from Bioconductor.

The dataset contains RNA-seq read count data from human airway smooth muscle cells treated with dexamethasone.

## Metadata Used

Metadata provides biological meaning to the raw RNA-seq count data.

In this project, the most important metadata column is `dex`, which describes the treatment condition of each sample.

| Metadata Column | Meaning | Use in Analysis |
|---|---|---|
| `dex` | Dexamethasone treatment condition | Used to compare treated and untreated samples |

The treatment condition was used in the DESeq2 design formula:

```r
design = ~ dex