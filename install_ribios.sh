#!/bin/bash
## Install ribios packages and all their dependencies from GitHub (bedapub org)
## Usage: bash install_ribios.sh

set -e

echo "=== Installing ribios packages from GitHub (bedapub) ==="

## Step 1: Install remotes and BiocManager if needed, then Bioconductor packages
echo "--- Installing Bioconductor dependencies ---"
Rscript -e '
if (!requireNamespace("remotes", quietly = TRUE))
    install.packages("remotes", repos = "https://cloud.r-project.org")
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "https://cloud.r-project.org")
BiocManager::install(c(
    "Biobase", "BiocGenerics", "limma", "edgeR",
    "ComplexHeatmap", "circlize", "sva", "vsn", "made4"
), update = FALSE, ask = FALSE)
'

## Step 2: Install CRAN dependencies
echo "--- Installing CRAN dependencies ---"
Rscript -e '
cran_pkgs <- c(
    "Rcpp", "RcppArmadillo",
    "lattice", "RColorBrewer", "gridExtra", "ggplot2",
    "igraph", "magrittr", "plotly",
    "dplyr", "tidyr", "rjson", "mongolite",
    "Matrix", "openxlsx",
    "readr", "readxl", "rlang", "scales",
    "UpSetR", "gt", "ggrepel", "reshape2"
)
to_install <- cran_pkgs[!sapply(cran_pkgs, requireNamespace, quietly = TRUE)]
if (length(to_install) > 0) {
    install.packages(to_install, repos = "https://cloud.r-project.org")
}
'

## Step 3: Install ribios packages from GitHub in dependency order
echo "--- Installing ribios packages from GitHub ---"
Rscript -e '
library(remotes)
install_github("bedapub/ribiosUtils",      upgrade = "never")
install_github("bedapub/ribiosMath",        upgrade = "never")
install_github("bedapub/ribiosArg",         upgrade = "never")
install_github("bedapub/ribiosGraph",       upgrade = "never")
install_github("bedapub/ribiosIO",          upgrade = "never")
install_github("bedapub/ribiosPlot",        upgrade = "never")
install_github("bedapub/ribiosAnnotation",  upgrade = "never")
install_github("bedapub/ribiosExpression",  upgrade = "never")
install_github("bedapub/ribiosNGS",         upgrade = "never")
'

## Step 4: Verify installation
echo "--- Verifying installation ---"
Rscript -e '
pkgs <- c("ribiosUtils", "ribiosIO", "ribiosPlot", "ribiosMath",
          "ribiosGraph", "ribiosExpression", "ribiosAnnotation", "ribiosNGS")
ok <- sapply(pkgs, requireNamespace, quietly = TRUE)
if (all(ok)) {
    cat("All ribios packages installed successfully!\n")
} else {
    cat("FAILED to load:", pkgs[!ok], "\n")
    quit(status = 1)
}
'

echo "=== Done ==="
