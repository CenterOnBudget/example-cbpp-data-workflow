library(bench)
library(readr)
library(tidyr)


shared_drive <- "Z:/datasets_library"
csv_file <- "psam_p06.csv"

benchmarks <- list(
  "disk" = bench_time(
    read_csv(
      paste("data", csv_file, sep = "/"), 
      show_col_types = FALSE,
      progress = FALSE
    )
  ),
  "shared_drive" = bench_time(
    read_csv(
      paste(shared_drive, csv_file, sep = "/"), 
      show_col_types = FALSE,
      progress = FALSE
    )
  )
)

benchmarks |>
  tibble::enframe() |>
  hoist(value, "process") |>
  hoist(value, "real") |>
  write_csv("benchmarks_r.csv")

