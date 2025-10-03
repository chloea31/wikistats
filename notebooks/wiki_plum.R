#!/usr/bin/env Rscript 

###############################################################
###############################################################
### Involvement of global warming on source and sink organs ###
### and effects on the quality of plum                      ###
###############################################################
###############################################################



### Problematic: Could the characteristics of source-sink relationships, potentially altered by global warming, have an impact 
### on the quality of the plums and their yields (fruit load) in 2006 (Ohata et al., 2017) ?



####################
### Import libraries in R

library(prettyR)

####################
### Dataset

setwd("~/data")
plum <- read.csv("plum.csv", header = T, sep = ';', dec = ',', row.names = 1)
names(plum)
dim(plum)
str(plum) # to verify the type of variables