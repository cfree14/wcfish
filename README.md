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

Alternatively, you can download the datasets included in this package as Excel files from the Dryad open-access data repository here: https://datadryad.org/stash/dataset/doi:10.25349/D9M907


Datasets
---------

The package includes the following West Coast fisheries datasets (listed below):

__Coastwide datasets__
- West Coast commercial fisheries species: `?taxa`
- West Coast commercial fishing ports: `?ports`
- West Coast commercial fishing blocks shapefile: `?blocks`

__California (CDFW) spatial datasets__
- California marine protected areas (MPAs) shapefile: `?mpas_ca`

__California (CDFW) fisheries datasets__
- Annual commercial landings by source and species: `?cdfw_waters`
- Annual commercial landings by port and species: `?cdfw_ports`
- Annual number of licensed commercial fishers by area of residence: `?cdfw_n_comm_fishers`
- Annual number of registered commercial fishing vessels by length class: `?cdfw_n_comm_vessels_length`
- Annual number of registered commercial fishing vessels by port complex: `?cdfw_n_comm_vessels_port`
- Annual number of registered commercial fishing vessels: `?cdfw_n_comm_vessels`
- Annual CPFV landings by species: `?cdfw_cpfv`
- Annual CPFV landings by port complex and species: `?cdfw_cpfv_port`
- Annual CPFV participation and effort by port complex and species: `?cdfw_cpfv_effort`
- Annual kelp harvest by bed type: `?cdfw_kelp`
- Annual kelp harvest overall: `?cdfw_kelp_tots`

__PACFIN datasets__
- Species meta-data: `?pacfin_species`
- Ports and port complexes meta-data: `?pacfin_ports`
- Annual commercial landings by state (CA/OR/WA) and species: `?pacfin_all1`
- Annual commercial landings by state (CA/OR/WA), gear, and species: `?pacfin_all2`
- Annual commercial landings by state (CA/OR/WA), port complex, and species: `?pacfin_all5`
- Monthly commercial landings by state (CA/OR/WA) and species: `?pacfin_all6`
- Monthly commercial Dungeness crab landings by state (CA/OR/WA) and port complex: `?pacfin_crab2`

__RECFIN datasets__
- Annual recreational mortality by state, water area, mode, trip type, and species: `?recfin_cte2`
- Annual recreational mortality by state, mode, and species: `?recfin_cte3`
- Weekly salmon mortality in OR and WA by sub-areas, trip type, and species: `?recfin_cte5`
- Monthly salmon landings in CA by water area, mode, and species: `?recfin_cte7`

__Other West Coast fisheries datasets__
- Monthly commercial landings in CA by port complex and species from the SWFCC: `?swfsc`
- Annual commercial landings in CA by port complex, gear type, and species from the CALCOM: `?calcom`

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
- Extract the CDFW block id associated with a list of GPS coordinates:`?block_from_gps`



Vignette
---------

A vignette illustrating the use of the wcfish R package is available here: https://chrismfree.com/wp-content/uploads/wcfish-vignette.html


Citation
---------

Free CM, Vargas Poulsen C, Bellquist LF, Wassermann SN, Oken KL (2022) The CALFISH database: a century of California’s non-confidential fisheries landings and participation data. _Ecological Informatics_ 69: 101599. https://doi.org/10.1016/j.ecoinf.2022.101599
