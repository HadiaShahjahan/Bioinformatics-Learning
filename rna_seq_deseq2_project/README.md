# RNA-seq Differential Expression Analysis using R and DESeq2

This project demonstrates a beginner-friendly RNA-seq differential expression analysis workflow using R, Bioconductor, and DESeq2.

The analysis uses the `airway` dataset to compare gene expression between dexamethasone-treated and untreated human airway smooth muscle cell samples.

## Project Aim

The aim of this project is to analyze RNA-seq count data and identify genes that show statistically significant differential expression between treated and untreated samples.

## Dataset

This project uses the `airway` dataset from Bioconductor.

The dataset contains RNA-seq read count data from human airway smooth muscle cells treated with dexamethasone.

## Tools and Packages Used

- R
- Bioconductor
- DESeq2
- airway
- ggplot2

## Analysis Workflow

The RNA-seq differential expression analysis included the following steps:

1. Load RNA-seq count data
2. Define treated and untreated sample groups
3. Create a DESeq2 dataset object
4. Filter low-count genes
5. Run DESeq2 differential expression analysis
6. Extract treated vs untreated results
7. Identify significant genes using adjusted p-value
8. Generate PCA, MA, and volcano plots
9. Export the results table
10. Document results and interpretation

## Project Structure

| File/Folder | Description |
|---|---|
| `deseq2_airway_analysis.R` | R script used to perform DESeq2 differential expression analysis |
| `results_summary.md` | Summary of DESeq2 results and interpretation |
| `top_differentially_expressed_genes.csv` | DESeq2 results table sorted by adjusted p-value |
| `plots/` | Folder containing PCA, MA, and volcano plots |
| `plots/README.md` | Explanation and interpretation of generated plots |

## Results Summary

| Metric | Value |
|---|---|
| Total genes tested | 22,008 |
| Significant genes with adjusted p-value < 0.05 | 2,712 |

After filtering low-count genes, 22,008 genes were tested for differential expression.

Using an adjusted p-value cutoff of 0.05, 2,712 genes were identified as significantly differentially expressed between dexamethasone-treated and untreated samples.

## Plot Outputs

The project generated the following plots:

| Plot | Purpose |
|---|---|
| `pca_plot.png` | Visualizes sample-level expression patterns |
| `ma_plot.png` | Shows log2 fold changes across average expression levels |
| `volcano_plot.png` | Highlights genes based on fold change and statistical significance |

## Skills Practiced

- RNA-seq count data analysis
- Differential gene expression analysis
- R programming
- Bioconductor workflow
- DESeq2 analysis
- Data filtering
- Adjusted p-value interpretation
- Log2 fold change interpretation
- PCA plot interpretation
- MA plot interpretation
- Volcano plot interpretation
- GitHub project documentation

## Learning Outcome

This project helped me understand how RNA-seq count data can be analyzed using DESeq2 to identify genes associated with treatment-related expression changes.

It also helped me practice documenting a reproducible bioinformatics workflow using R, plots, result tables, and Markdown documentation.

## Conclusion

This project demonstrates a basic but professional RNA-seq differential expression analysis workflow using R and DESeq2.

The analysis found that dexamethasone treatment was associated with measurable gene expression changes in the airway dataset.