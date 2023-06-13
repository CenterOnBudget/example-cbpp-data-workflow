library(tidyverse)
library(arrow)


# Subset of variables to load
vars <- schema(
  "SSUID" = string(),
  "PNUM" = int16(),
  "SWAVE" = int8(),
  "MONTHCODE" = int8(),
  "WPFINWGT" = float64(),
  "TAGE_EHC" = int8(),
  "TAGE" = int8(),
  "ERACE" = int8(),
  "EORIGIN" = int8(),
  "EMDMTH" = int8(),
  "ESSI_BMONTH" = int8(),
  "ESSSMNYN" = int8(),
  "ESSRSN2YN" = int8(),
  "TFINCPOV" = float64(),
  "TMWKHRS" = float64(),
  "AMWKHRS" = int8(),
  "TWKHRS1" = int8(),
  "TWKHRS2" = int8(),
  "TWKHRS3" = int8(),
  "TWKHRS4" = int8(),
  "TWKHRS5" = int8()
)

# Open multi-file data set
sipp_extract <- open_delim_dataset(
  paste0("data/pu2014w", c(3:4), ".csv.gz"),
  delim = "|",
  col_types = vars
) |>
  select(all_of(names(vars))) |>
  rename_with(tolower) |>
  # Compute query & pull into memory
  collect()

# Remainder of the analysis occurs in-memory
  
