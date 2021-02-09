wcfish: U.S. West Coast fisheries data
======================================================================

Installation
------------

The "wcfish" R package can be installed from GitHub with:

``` r
# Run if you don't already have devtools installed
install.packages("devtools")

# Run once devtools is successfully installed
devtools::install_github("cfree14/wcfish", force=T)
library(wcfish)
```

Datasets
---------

The package includes the following West Coast fisheries datasets (listed below):

- Califonia commercial fishing ports: `?ports`
- California commercial fishing blocks shapefile: `?blocks`

A dataset can be accessed and inspected as in the following example:

``` r
# See dataset metadata by typing a question mark and the dataset name
?wcfish::blocks

# Store the dataset in an object of your own choosing as follows:
blocks_sf <- wcfish::blocks
```


Functions
---------

The package implements miscellaneous functions including functions to:

- Check spelling of common names: `?check_names`
- Reverse the format of common names (e.g., "Crab, Dungeness" to "Dungeness crab"): `?reverse_names`
- Convert common names to a common format (i.e., all to "regular" or "reverse" formats): `?convert_names`
- Harmonize common names and scientific names: `?harmonize_names`
