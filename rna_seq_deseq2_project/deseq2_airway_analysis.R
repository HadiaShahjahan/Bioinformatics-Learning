# RNA-seq Differential Expression Analysis using DESeq2
# Dataset: airway
# Author: Hadia Shahjahan

# -------------------------------
# 1. Install required packages
# -------------------------------

if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

packages <- c("DESeq2", "airway", "ggplot2")

for (pkg in packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    BiocManager::install(pkg)
  }
}

# -------------------------------
# 2. Load libraries
# -------------------------------

library(DESeq2)
library(airway)
library(ggplot2)

# -------------------------------
# 3. Load airway dataset
# -------------------------------

data("airway")

# -------------------------------
# 4. Export sample metadata
# -------------------------------

sample_metadata <- as.data.frame(colData(airway))
sample_metadata$sample_id <- rownames(sample_metadata)

sample_metadata <- sample_metadata[, c("sample_id", setdiff(names(sample_metadata), "sample_id"))]

write.csv(
  sample_metadata,
  file = "sample_metadata.csv",
  row.names = FALSE
)

# -------------------------------
# 5. Prepare treatment metadata
# -------------------------------

# Set untreated samples as the reference condition
airway$dex <- relevel(airway$dex, ref = "untrt")

# -------------------------------
# 6. Create DESeq2 dataset
# -------------------------------

dds <- DESeqDataSet(airway, design = ~ dex)

# Remove genes with very low counts
dds <- dds[rowSums(counts(dds)) > 10, ]

# -------------------------------
# 7. Run DESeq2 analysis
# -------------------------------

dds <- DESeq(dds)

res <- results(dds, contrast = c("dex", "trt", "untrt"))

# Sort results by adjusted p-value
res_ordered <- res[order(res$padj), ]

# Convert results to data frame
res_df <- as.data.frame(res_ordered)

# Add gene IDs as a column
res_df$gene_id <- rownames(res_df)

# -------------------------------
# 8. Create output folder
# -------------------------------

if (!dir.exists("plots")) {
  dir.create("plots")
}

# -------------------------------
# 9. Export differentially expressed gene results
# -------------------------------

write.csv(
  res_df,
  file = "top_differentially_expressed_genes.csv",
  row.names = FALSE
)

# -------------------------------
# 10. PCA plot
# -------------------------------

vsd <- vst(dds, blind = FALSE)

pca_data <- plotPCA(vsd, intgroup = "dex", returnData = TRUE)
percent_var <- round(100 * attr(pca_data, "percentVar"))

pca_plot <- ggplot(pca_data, aes(PC1, PC2, color = dex)) +
  geom_point(size = 4) +
  xlab(paste0("PC1: ", percent_var[1], "% variance")) +
  ylab(paste0("PC2: ", percent_var[2], "% variance")) +
  ggtitle("PCA Plot of RNA-seq Samples") +
  theme_minimal()

ggsave("plots/pca_plot.png", pca_plot, width = 7, height = 5)

# -------------------------------
# 11. MA plot
# -------------------------------

png("plots/ma_plot.png", width = 800, height = 600)
plotMA(res, main = "MA Plot: Treated vs Untreated", ylim = c(-5, 5))
dev.off()

# -------------------------------
# 12. Volcano plot
# -------------------------------

volcano_data <- res_df

volcano_data$significant <- ifelse(
  volcano_data$padj < 0.05 & abs(volcano_data$log2FoldChange) > 1,
  "Significant",
  "Not significant"
)

volcano_plot <- ggplot(
  volcano_data,
  aes(x = log2FoldChange, y = -log10(padj), color = significant)
) +
  geom_point(alpha = 0.6) +
  ggtitle("Volcano Plot: Treated vs Untreated") +
  xlab("Log2 Fold Change") +
  ylab("-log10 Adjusted P-value") +
  theme_minimal()

ggsave("plots/volcano_plot.png", volcano_plot, width = 7, height = 5)

# -------------------------------
# 13. Print analysis summary
# -------------------------------

significant_genes <- sum(res_df$padj < 0.05, na.rm = TRUE)

cat("RNA-seq Differential Expression Analysis Completed\n")
cat("--------------------------------------------------\n")
cat("Total genes tested:", nrow(res_df), "\n")
cat("Significant genes with adjusted p-value < 0.05:", significant_genes, "\n")
cat("Sample metadata saved to: sample_metadata.csv\n")
cat("Results saved to: top_differentially_expressed_genes.csv\n")
cat("Plots saved in: plots/ folder\n")