#### CAREFUL ####
# First, please put your .h5ad file in ./
# Or download the example dataset.
### This code probably won't run on your machine. sorry. Please see sceasy docs on how to set up a conda env.###

#### Grab packages ####
p_load(devtools)

if (!requireNamespace("pacman", 
                      quietly = TRUE)) {
  install.packages("pacman", ask = FALSE)
}
library(pacman)

if (!requireNamespace("BiocManager", 
                      quietly = TRUE)) {
  install.packages("BiocManager", ask = FALSE)
}

if (!requireNamespace("sceasy", 
                      quietly = TRUE)) {
  devtools::install_github("cellgeni/sceasy")
}

if (!requireNamespace("iSEE", 
                      quietly = TRUE)) {
  BiocManager::install("iSEE", 
                       ask = FALSE)
}

if (!requireNamespace("SingleCellExperiment", 
                      quietly = TRUE)) {
  BiocManager::install("SingleCellExperiment", 
                       ask = FALSE)
}

if (!requireNamespace("LoomExperiment", 
                      quietly = TRUE)) {
  BiocManager::install("LoomExperiment", 
                       ask = FALSE)
}
p_load(sceasy, reticulate, SingleCellExperiment, LoomExperiment)

use_condaenv('bonk')
loompy <- reticulate::import('loompy')

#### Download dataset from humancellatlas.usegalaxy.eu ####
#download.file(url = "https://humancellatlas.usegalaxy.eu/datasets/11ac94870d0bb33a6e276e5f70445ab0/display?to_ext=h5ad",
#              destfile = "./mice_scRNA.h5ad")

#### GTN Training dataset ####
scRNA_object_example <- sceasy::convertFormat("mice_scRNA.h5ad",
                                              from = "anndata",
                                              to = "seurat",
                                              outFile = "./mice_scRNA.rds") ### PCA, tSNE already calculated and embedded in dataset
