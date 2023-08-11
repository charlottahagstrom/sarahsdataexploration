
# dataexploration.R
# description: Sarah Shakil is teaching me how to set up an R project, organization, tidyverse, linkage to Github and some data exploration with multivariate statistics. 
# author: Charlotta Hagström (charlottahagstrom@live.se)
# date: 2023-08-09

# workspace set-up 

rm(list=ls()) # clears the environment
ls() # a check that there's nothing there

library(readxl)
install.packages("xlsx")
library(xlsx) # havin troubles installing and reading this 
library(tidyverse)

directory <- "/Users/charlottahagstrom/Documents/Multivariate statistics with Sarah Shakil/sarahsdataexploration/"
# this sets the pathway to my working folder

# reading data 

l <- read_xlsx(paste0(directory, "LakeChem 2001-2022 Surface Season cleand.xlsx")) # reads the excel-file directly, no need to make csv:s with this command
View(l)

s <- read_xlsx(paste0(directory, "TrendStreams Active.xlsx"))
View(s)

colnames(l) # shows the column names 
colnames(s)

# clean-up datasets ####

l <- l %>% rename(MDMVMID = 'MD-MVM Id') # both datasets has this column, but with different names. this function makes both column names MDMVMID. 

# merge datasets ####

all <- merge(l, s, all=TRUE)



