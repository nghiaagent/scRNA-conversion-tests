#### CAREFUL ####

### First, please put your .h5ad file in ./data ###

### /CAREFUL ###

#### Grab packages ####

if (!require(pacman)) {
  install.packages(pacman)
}
library(pacman)

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


#### OPTIONAL: Download dataset from humancellatlas.usegalaxy.eu ####

# download.file(url = "https://humancellatlas.usegalaxy.eu/datasets/11ac94870d0bb33a6e276e5f70445ab0/display?to_ext=h5ad",
#               destfile = "./data/mice_scRNA.h5ad")

#### Import data ####


