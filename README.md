# Example CBPP Data Workflows

Example workflows in R and Stata. Instructions for replicating the examples are below.

## Data

We'll pretend that the `data/` folder in this repository is the directory containing synced SharePoint datasets (which live on disk after on-demand syncing).

To populate `data/`, you'll need to download waves 3 and 4 of the 2014 Survey of Income and Program Participation from the U.S. Census Bureau website.

From each of the [wave 3](https://www.census.gov/programs-surveys/sipp/data/datasets/2014-panel/wave-3.html) and [wave 4](https://www.census.gov/programs-surveys/sipp/data/datasets/2014-panel/wave-4.html) pages, download the following links to `data/`:

-   Pipe-Delimited Text Format GNU gzip
    -   Do not unzip
-   STATA Data Format (Version 13) DOS/Windows
    -   Unzip to `data/` (no junk paths).

## Stata and R versions

`example.do` was written in Stata 17 but should work in most earlier versions (I'd say any version after 13 is a safe bet).

`example.R` was written in R 4.3.0 but should work with any R version \>=4. I use [renv](https://rstudio.github.io/renv/) to manage package dependencies. To install the required packages:

-   With R Studio (recommended): Open `example-cbpp-data-workflow.Rproj` and run `renv::restore()`
-   Without R Studio: Open `example.R` , run `setwd()` to the project folder, then run `renv::restore()`.


## Questions/Issues

Contact Claire Zippel czippel@cbpp.org