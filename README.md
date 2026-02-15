# ribios

**ribios** (R interface to BIOS) is a suite of R packages for computational biology and bioinformatics, developed by the Bioinformatics group at Roche (bedapub).

## Packages

| Package                                                         | Description                                                              | Status                                                                                                                                                                                                     |
|-----------------------------------------------------------------|--------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [ribiosUtils](https://github.com/bedapub/ribiosUtils)           | Utilities from and Interface to the 'Bioinfo-C' ('BIOS') Library         | [![R-CMD-check](https://github.com/bedapub/ribiosUtils/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosUtils/actions/workflows/standard-ci-workflow.yml)           |
| [ribiosIO](https://github.com/bedapub/ribiosIO)                 | Input/Output Utilities of 'ribios' | [![R-CMD-check](https://github.com/bedapub/ribiosIO/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosIO/actions/workflows/standard-ci-workflow.yml)                 |
| [ribiosPlot](https://github.com/bedapub/ribiosPlot)             | Plotting Module of 'ribios' | [![R-CMD-check](https://github.com/bedapub/ribiosPlot/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosPlot/actions/workflows/standard-ci-workflow.yml)             |
| [ribiosMath](https://github.com/bedapub/ribiosMath)             | Mathematical and Statistical Tools in 'ribios'                           | [![R-CMD-check](https://github.com/bedapub/ribiosMath/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosMath/actions/workflows/standard-ci-workflow.yml)             |
| [ribiosGraph](https://github.com/bedapub/ribiosGraph)           | Manipulate and Visualize Graphs in 'ribios' | [![R-CMD-check](https://github.com/bedapub/ribiosGraph/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosGraph/actions/workflows/standard-ci-workflow.yml)           |
| [ribiosExpression](https://github.com/bedapub/ribiosExpression) | Gene Expression Analysis in 'ribios' | [![R-CMD-check](https://github.com/bedapub/ribiosExpression/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosExpression/actions/workflows/standard-ci-workflow.yml) |
| [ribiosAnnotation](https://github.com/bedapub/ribiosAnnotation) | Annotation of Genes, RNAs, and Proteins in 'ribios'                      | [![R-CMD-check](https://github.com/bedapub/ribiosAnnotation/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosAnnotation/actions/workflows/standard-ci-workflow.yml) |
| [ribiosNGS](https://github.com/bedapub/ribiosNGS)               | Handling Next-Generation Sequencing ('NGS') data in 'ribios' | [![R-CMD-check](https://github.com/bedapub/ribiosNGS/actions/workflows/standard-ci-workflow.yml/badge.svg)](https://github.com/bedapub/ribiosNGS/actions/workflows/standard-ci-workflow.yml)               |

## Installation

Install all ribios packages and their dependencies using one of the provided scripts:

**From the shell:**

```bash
bash install_ribios.sh
```

**From R:**

```r
source("install_ribios.Rscript")
```

Both scripts install Bioconductor and CRAN dependencies first, then install the ribios packages from GitHub in dependency order.
