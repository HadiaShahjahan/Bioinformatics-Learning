# RNA-seq DESeq2 Results Summary

## Project Overview

This project performed RNA-seq differential expression analysis using R, Bioconductor, and DESeq2.

The purpose of the analysis was to compare gene expression between dexamethasone-treated and untreated human airway smooth muscle cell samples using the `airway` dataset.

Differential expression analysis helps identify genes whose expression levels are significantly different between biological conditions.

## Dataset

This project used the `airway` dataset from Bioconductor.

The dataset contains RNA-seq read count data from human airway smooth muscle cells. Some samples were treated with dexamethasone, while others were left untreated.

In this project, the untreated samples were used as the reference group, and treated samples were compared against untreated samples.

## Metadata

Metadata provides biological meaning to the raw RNA-seq count data.

The raw count data shows the number of reads mapped to each gene, but metadata explains the biological condition of each sample.

The main metadata column used in this analysis was `dex`.

| Metadata Column | Meaning | Use in Analysis |
|---|---|---|
| `dex` | Indicates whether each sample was treated with dexamethasone or left untreated | Used to define treated and untreated groups for DESeq2 analysis |

The sample metadata was exported as:

`sample_metadata.csv`

This makes the project more transparent because the sample conditions used in the analysis are available as a separate file.

## Analysis Method

Differential expression analysis was performed using DESeq2 in R.

The comparison used in this project was:

| Condition | Description |
|---|---|
| Treated | Dexamethasone-treated samples |
| Untreated | Control samples without dexamethasone treatment |

The DESeq2 design formula used the treatment metadata:

```r
design = ~ dex