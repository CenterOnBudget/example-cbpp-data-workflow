# Example CBPP Data Workflows

Example workflows in R and Stata. Instructions for replicating the examples are below.


## Data

The example dataset is a 1.33GB CSV file "psam_p06.csv", which can be downloaded from the U.S. Census Bureau FTP: <https://www2.census.gov/programs-surveys/acs/data/pums/2021/5-Year/csv_pca.zip>

1. Download and unzip the file.
2. Copy it to `data/` and to the shared network drive. 


## Benchmark

In `benchmark.R`, check that the object `shared_drive` is the path to the shared drive on your machine, and edit if not. Run the script. Benchmarks will be saved in `benchmarks_r.csv`.

`benchmark.R` was written in R 4.3.1 but should work with any R version \>=4. I use [renv](https://rstudio.github.io/renv/) to manage package dependencies. To install the required packages:

-   With R Studio (recommended): Open `example-cbpp-data-workflow.Rproj` and run `renv::restore()`
-   Without R Studio: Open `example.R` , run `setwd()` to the project folder, then run `renv::restore()`.


## Questions/Issues

Contact Claire Zippel czippel@cbpp.org