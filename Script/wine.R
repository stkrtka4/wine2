#-----------------------------------------------------------------------------
## LOANDING PACKAGES 

library("tidyverse")
library("skimr")
library("lubridate")
library("rpart") 
library("recipes")
library("caret")

#-----------------------------------------------------------------------------
## LOANDING FILES
### LOANDING FILES - GENERAL DATA INFO

source("4.scripts/1general_data.R")

#-----------------------------------------------------------------------------
## LOANDING FILES
### LOANDING FILES - VARIABLE MODIFICATIONS 

source("4.scripts/2variable_modifications.R")

#-----------------------------------------------------------------------------
## LOANDING FILES
### LOANDING FILES - DATA EXPLORATIONS FOR PREDICT AND DEPENDENT VARIABLES

#source("4.scripts/3exploration_1D.R")

#-----------------------------------------------------------------------------
## LOANDING FILES
### LOANDING FILES - OTHERS

source("4.scripts/4correlations.R")
   
#-----------------------------------------------------------------------------
## LINEAR REGRESSION FOR EXPLANATION THE BEST WINE WITH LOW PRICE AND HIGH POINTS
### CREATE THE VARIABLE WINE_SUPER

wine_super <- wine

wine_super <- drop_na(wine, price, points)

wine_super_lm <- lm(points ~ log(price), wine_super)

summary(wine_super_lm)
