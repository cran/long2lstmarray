## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("luisgarcez11/long2lstmarray")

## ----example, eval = TRUE-----------------------------------------------------
library(long2lstmarray)
head(alsfrs_data, n = 10)

## -----------------------------------------------------------------------------
get_var_sequence(data = alsfrs_data, subj_var = "subjid", subj = 1, var = "p1")

## -----------------------------------------------------------------------------
slice_var_sequence(sequence = 1:10, lags = 3, 
                   label_length = 1, label_output = TRUE)

## -----------------------------------------------------------------------------
get_var_array(data = alsfrs_data, subj_var = "subjid",
              var = "p3", time_var = "visdy",
              lags = 5, label_length = 1,
              label_output = TRUE)

## -----------------------------------------------------------------------------
array3d <- longitudinal_array(alsfrs_data, "subjid",
                              vars =  c("p1", "p2", "p3"), 
                              time_var =  "visdy", lags = 3,
                              label_output = FALSE)

## -----------------------------------------------------------------------------
array3d[1,,]

## -----------------------------------------------------------------------------
array3d[,1,]

## -----------------------------------------------------------------------------
array3d[,,1] 

