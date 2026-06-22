# RNA-seq Differential Expression Analysis using R and DESeq2

This project demonstrates a complete beginner-friendly RNA-seq differential expression analysis workflow using R, Bioconductor, and DESeq2.

The analysis uses the `airway` dataset to compare gene expression between dexamethasone-treated and untreated human airway smooth muscle cell samples.

This project focuses on understanding how RNA-seq count data and sample metadata are used together to identify genes that show statistically significant expression changes between biological conditions.

## Project Aim

The aim of this project is to perform RNA-seq differential expression analysis and identify genes that are significantly differentially expressed between treated and untreated samples.

The main biological question addressed in this project is:

> Which genes show significant expression changes after dexamethasone treatment?

## Background

RNA-seq is a sequencing-based method used to measure gene expression levels across biological samples.

In RNA-seq analysis, read counts are generated for genes or transcripts. These counts represent how many sequencing reads were assigned to each gene.

However, raw counts alone do not provide biological meaning. Sample metadata is required to explain the condition, treatment, or group each sample belongs to.

Differential expression analysis compares gene expression between conditions and identifies genes whose expression is significantly increased or decreased.

## Dataset

This project uses the `airway` dataset from Bioconductor.

The dataset contains RNA-seq read count data from human airway smooth muscle cells. Some samples were treated with dexamethasone, while others were untreated.

The untreated samples were used as the reference/control group, and treated samples were compared against untreated samples.

## Metadata Used

Metadata provides biological meaning to the raw RNA-seq count data.

In this project, the most important metadata column is `dex`.

| Metadata Column | Meaning | Use in Analysis |
|---|---|---|
| `dex` | Indicates dexamethasone treatment condition | Used to define treated and untreated sample groups |

The `dex` metadata column identifies whether each sample was:

- treated with dexamethasone
- untreated/control

The sample metadata was exported as:

`sample_metadata.csv`

This makes the project more transparent because the sample information used in the analysis is available as a separate file.

## DESeq2 Design Formula

The treatment metadata was used in the DESeq2 design formula:

```r
design = ~ dex