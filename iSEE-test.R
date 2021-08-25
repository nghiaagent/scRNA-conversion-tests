#### CAREFUL ####
# First, please put your .h5ad file in ./
# Or download the example dataset.

#### Grab packages ####
if (!requireNamespace("BiocManager", 
                      quietly = TRUE)) {
  install.packages("BiocManager", ask = FALSE)
}

if (!requireNamespace("zellkonverter", 
                      quietly = TRUE)) {
  BiocManager::install("zellkonverter", 
                       ask = FALSE)
}
library(zellkonverter)

if (!requireNamespace("iSEE", 
                      quietly = TRUE)) {
  BiocManager::install("iSEE", 
                       ask = FALSE)
}
library(iSEE)

#### Download dataset from humancellatlas.usegalaxy.eu ####
download.file(url = "https://humancellatlas.usegalaxy.eu/datasets/11ac94870d0bb33a6e276e5f70445ab0/display?to_ext=h5ad",
              destfile = "./mice_scRNA.h5ad")

#### Example dataset ####
scRNA_object_example <- readH5AD(file = "./mice_scRNA.h5ad") ### PCA, tSNE already calculated and embedded in dataset
vis_example <- iSEE(scRNA_object_example) ### Create iSEE app
shiny::runApp(vis_example)

#### Published dataset ####
# scRNA_object_mine <- readH5AD(file = "./data/microglia.h5ad") ### PCA, tSNE already calculated and embedded in dataset
# vis_mine <- iSEE(scRNA_object_mine)


