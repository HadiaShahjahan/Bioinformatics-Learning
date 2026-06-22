# RNA-seq DESeq2 Results Summary

## Dataset

This project used the `airway` dataset from Bioconductor.

The dataset contains RNA-seq read counts from human airway smooth muscle cells treated with dexamethasone.

## Metadata

Sample metadata was used to define the biological conditions for the analysis.

The main metadata column used was `dex`.

| Metadata Column | Meaning |
|---|---|
| `dex` | Indicates whether each sample was treated with dexamethasone or left untreated |

The metadata allowed the RNA-seq count data to be interpreted according to treatment condition.

The sample metadata was exported as:

```text
sample_metadata.csv